#!/bin/bash
# setup_symlinks.sh
# Creates symlinks to the interop directory in all workspace subprojects

# Define standard workspace projects
projects=("GTD" "InfraCore" "MCP" "OutBrain" "Tooling")
workspace_root="/Users/evanacas/workspace"
interop_dir="${workspace_root}/SystemDocs/interop"

echo "Setting up interop symlinks in workspace projects..."

# Create symlinks in each project
for project in "${projects[@]}"; do
  project_dir="${workspace_root}/${project}"
  
  # Check if project directory exists
  if [ -d "$project_dir" ]; then
    # Check if symlink already exists to avoid overwriting
    if [ ! -e "${project_dir}/interop" ]; then
      ln -s "$interop_dir" "${project_dir}/interop"
      echo "✅ Created symlink in ${project}"
    else
      echo "⚠️ Symlink already exists in ${project}"
    fi
  else
    echo "⚠️ Project directory not found: ${project}"
  fi
done

echo "Symlink setup complete."
echo "Each project now has access to the interop system via './interop'" 