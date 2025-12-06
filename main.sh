#!/bin/bash

MODULE_DIR="./modules"
OUTPUT_DIR="./output"

if [ -e logs.log ]; then
    logs="logs.log"
else
    touch logs.log
    logs="logs.log"
fi

# Colors for pretty CLI
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NC="\e[0m"

help_menu() {
    echo "#############################################################"
    echo "                Security Audit Toolkit"
    echo "#############################################################"
    echo ""
    echo "Usage: $0 [option]"
    echo ""
    echo "Options:"
    echo "  all                Run full audit"
    echo "  insecure           Scan insecure permissions"
    echo "  world-writable     Find world-writable files"
    echo "  weak-scripts       Analyze weak/risky scripts"
    echo "  broken-links       Check for broken symbolic links"
    echo "  recommendations    Generate system recommendations"
    echo "  report             Combine all reports into final file"
    echo "  help               Show help menu"
    echo ""
}

ensure_directories() {
    mkdir -p "$OUTPUT_DIR"
}

run_module() {
    script="$MODULE_DIR/$1.sh"

    if [ -f "$script" ]; then
        echo -e "${YELLOW}Running $1 module...${NC}"
        echo -e "$(date) - Running $1...\n" >> "$logs"
        bash "$script"
        echo -e "${GREEN}Completed: $1${NC}\n"
        echo -e "$(date) - Exiting $1...\n" >> "$logs"
    else
        echo -e "${RED}Module $1 not found!${NC}"
        echo -e "$(date) - Failed to load $1\n" >> "$logs"
        exit 1
    fi
}

case "$1" in
    help|--help)
        help_menu
        ;;
    insecure)
        ensure_directories
        run_module "insecure_permissions"
        ;;
    world-writable)
        ensure_directories
        run_module "world_writable"
        ;;
    weak-scripts)
        ensure_directories
        run_module "weak_scripts"
        ;;
    broken-links)
        ensure_directories
        run_module "broken_links"
        ;;
    recommendations)
        ensure_directories
        run_module "recommendations"
        ;;
    report)
        ensure_directories
        run_module "report_generator"
        ;;
    all)
        ensure_directories
        run_module "insecure_permissions"
        run_module "world_writable"
        run_module "weak_scripts"
        run_module "broken_links"
        run_module "recommendations"
        run_module "report_generator"
        ;;
    *)
        echo -e "${RED}Invalid option.${NC}"
        help_menu
        ;;
esac
