#!/usr/bin/env bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
ENDCOLOR=$(tput sgr0)

PLATFORMS=("bc" "sh")
PLATFORM_URLS=("https://github.com/bigcommerce/cornerstone/archive/master.tar.gz" "https://github.com/Shopify/dawn/archive/main.tar.gz")
TEMPLATE_URLS=("https://github.com/minnek-digital-studio/bigcommerce-template/archive/master.tar.gz" "https://github.com/minnek-digital-studio/shopify-template/archive/master.tar.gz")

echo "${GREEN}Hello, what platform do you want to setup?${ENDCOLOR}"

PS3="Select one from the options above: "
select option in "${PLATFORMS[@]}"; do
  if [[ -n $option ]]; then
    case $option in
      "bc")
        platform="bc"
        selected_index=$((REPLY-1))
        echo "${GREEN}Thank you for selecting $platform${ENDCOLOR}"
        break
        ;;
      "sh")
        platform="sh"
        selected_index=$((REPLY-1))
        echo "${GREEN}Thank you for selecting $platform${ENDCOLOR}"
        break
        ;;
      *)
        echo "${RED}Invalid option. Please try again.${ENDCOLOR}"
        ;;
    esac
  else
    echo "${RED}Invalid option. Please try again.${ENDCOLOR}"
  fi
done

echo ""
echo "${GREEN}Starting to download the official theme from GitHub...${ENDCOLOR}"
echo ""

curl -L "${PLATFORM_URLS[$selected_index]}" | tar zxf - --strip-components=1

if [[ $platform == "bc" ]]; then
    mv cornerstone-master/{.*,*} .
    cp -rfv cornerstone-master/* .
    rm -rf cornerstone-master
fi

if [[ $platform == "sh" ]]; then
    mv dawn-main/{.*,*} .
    cp -rfv dawn-master/* .
    rm -rf dawn-main
fi

echo ""
echo "${GREEN}Git add and commit the theme installation: ${ENDCOLOR}"
echo ""

git add --all -- :!setup.sh
git commit -m "chore: setup theme installation"

echo ""
echo "${GREEN}Setup the environment using the base template: ${ENDCOLOR}"
echo ""

curl -L "${TEMPLATE_URLS[$selected_index]}" | tar zxf - --strip-components=1

if [[ $platform == "bc" ]]; then
    mv bigcommrce-template-master/{.*,*} .
    cp -rfv bigcommrce-template-master/* .
    rm -rf bigcommerce-template-master
fi

if [[ $platform == "sh" ]]; then
    mv shopify-template-master/{.*,*} .
    cp -rfv shopify-template-master/* .
    rm -rf shopify-template-master
fi

echo ""
echo "${GREEN}Git add and commit the theme environment: ${ENDCOLOR}"
echo ""

git add --all -- :!setup.sh
git commit -m "chore: setup theme environment"

if [[ $platform == "bc" ]]; then
    echo ""
    echo "${GREEN}Installing node packages...${ENDCOLOR}"
    echo ""

    npm i -D husky @commitlint/config-conventional @commitlint/cli cypress eslint-plugin-cypress cli-color release-it @release-it/bumper @release-it/conventional-changelog
    echo ""

    git add package.json
    git commit -m "chore: update environment packages"
fi

echo ""
echo "${GREEN}Finished setup.${ENDCOLOR} ${GREEN}Please read the template documentation from the README and delete this setup.sh file.${ENDCOLOR}"
