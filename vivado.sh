# ================================
# Vivado Batch Install (Arch Linux)
# No GUI, No Freeze Method
# ================================

# 1. Go to Downloads (where .bin exists)
cd ~/Downloads

# 2. Make installer executable
chmod +x Xilinx_Unified_2022.2_1014_8888_Lin64.bin

# 3. Extract installer to persistent folder (avoids temp extraction)
./Xilinx_Unified_2022.2_1014_8888_Lin64.bin --noexec --target ~/vivado_installer

# 4. Move into extracted installer directory
cd ~/vivado_installer

# 5. Verify extraction (should see xsetup)
ls

# 6. Generate installation config file (interactive CLI, no GUI)
./xsetup --batch ConfigGen

# NOTE:
# Config file will be created at:
# ~/.Xilinx/install_config.txt

# 7. Edit install location (change default /opt/Xilinx)
nano ~/.Xilinx/install_config.txt

# Find this line:
# Destination=/opt/Xilinx
# Change to:
# Destination=/home/zephyro/tools/vivado

# Save and exit (Ctrl+O, Enter, Ctrl+X)

# 8. Generate authentication token (login required)
./xsetup -b AuthTokenGen

# 9. Set locale fix (prevents installer issues on Arch)
export LC_ALL=C

# 10. Run batch installation (NO GUI → NO FREEZE)
./xsetup --batch Install \
--agree XilinxEULA,3rdPartyEULA \
--config ~/.Xilinx/install_config.txt

# ================================
# AFTER INSTALL
# ================================

# 11. Load Vivado environment
source ~/tools/vivado/Vivado/*/settings64.sh

# 12. Launch Vivado
vivado

# ================================
# OPTIONAL: Add to .bashrc for persistence
# ================================

echo 'source ~/tools/vivado/Vivado/*/settings64.sh' >> ~/.bashrc
