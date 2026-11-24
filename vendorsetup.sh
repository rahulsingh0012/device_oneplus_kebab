echo "Cloning required repositories for OnePlus SM8250..."

# Common Vendor
git clone https://github.com/rahulsingh0012/vendor_oneplus_sm8250-common.git -b lineage-24-test vendor/oneplus/sm8250-common

# Common Device
git clone https://github.com/rahulsingh0012/device_oneplus_sm8250-common.git -b lineage-24-test device/oneplus/sm8250-common 

# Lemonades Vendor
git clone https://github.com/rahulsingh0012/vendor_oneplus_lemonades.git -b lineage-23.2 vendor/oneplus/kebab

# Hardware Oplus
git clone https://github.com/rahulsingh0012/hardware_oplus.git hardware/oplus

# Kernel
git clone https://github.com/spidey-t/kernel_oneplus_sm8250.git -b lineage-24-test kernel/oneplus/sm8250

echo "All repositories cloned successfully!"