#!/bin/bash

# ANSI color codes
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
GREEN='\033[0;32m'
MAGENTA='\033[1;35m'
LIGHT_MAGENTA='\033[1;95m'
NC='\033[0m' # No Color

echo -e "${CYAN}Starting Git Update Process...${NC}"

# Step 1: Git Status
echo -e "${CYAN}Checking current status...${NC}"
git status

# Step 2: Git Pull
echo -e "${CYAN}Pulling latest changes from the remote repository...${NC}"

# Check if there are local changes that may cause conflicts
if ! git pull --rebase; then
  echo -e "${RED}Error: Pulling changes failed.${NC} Attempting to resolve conflicts."
  
  # Stash local changes
  echo -e "${CYAN}Stashing local changes...${NC}"
  git stash
  
  # Attempt pull again
  echo -e "${CYAN}Pulling changes again after stashing...${NC}"
  if ! git pull --rebase; then
    echo -e "${RED}Error: Pulling changes failed after stashing.${NC} Please resolve conflicts manually."
    exit 1
  fi
  
  # Apply stash
  echo -e "${CYAN}Applying stashed changes...${NC}"
  git stash apply
  
  # Check if stash apply was successful
  if [ $? -ne 0 ]; then
    echo -e "${RED}Error: Applying stash failed.${NC} Please resolve conflicts manually."
    exit 1
  fi
fi

# Step 3: Git Add (if no conflicts)
if ! git diff-index --quiet HEAD --; then
  echo -e "${GREEN}Adding changes to staging area...${NC}"
  git add .
else
  echo -e "${YELLOW}No changes to add.${NC}"
fi

# Step 4: Git Commit (if changes were added)
if ! git diff-index --cached --quiet HEAD; then
  echo -e "${LIGHT_MAGENTA}Committing changes...${NC}"
  read -p "$(echo -e "${MAGENTA}Enter commit message:${NC} ")" commit_message
  git commit -m "$commit_message"

  # Check if commit was successful
  if [ $? -ne 0 ]; then
    echo -e "${RED}Error: Commit failed.${NC}"
    exit 1
  fi

  # Step 5: Git Push
  echo -e "${CYAN}Pushing changes to the remote repository...${NC}"
  git push

  # Check if push was successful
  if [ $? -ne 0 ]; then
    echo -e "${RED}Error: Push failed.${NC} Please try again later."
    exit 1
  fi
else
  echo -e "${YELLOW}No changes to commit.${NC}"
fi

echo -e "${GREEN}Git update process completed successfully.${NC}"
