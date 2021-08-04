# Place in the same folder with dla_inference.sh script in Son's FairMOT repo.

# The dla_inference.sh script take 3 arguments:
# - video inference path
# - model path (relative path to model in the repo)
# - save path (relative path to save folder in the repo)


data_root='/mnt/1T/data_vtx/data'

declare -a vid_list=("./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-070257_E20210608-070338.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-070353_E20210608-070414.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-070408_E20210608-070429.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-070505_E20210608-070646.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-070643_E20210608-070704.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-071201_E20210608-071225.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-071347_E20210608-071428.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-071521_E20210608-071544.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-071620_E20210608-071642.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-071635_E20210608-071701.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-071733_E20210608-071757.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-071803_E20210608-071825.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-072402_E20210608-072424.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-073014_E20210608-073102.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-073131_E20210608-073156.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-073407_E20210608-073432.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-073744_E20210608-073816.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-073826_E20210608-073848.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-073913_E20210608-074006.mp4"
                    "./vtx_tracking/13_camnhieunguoi_08062021_7_9h/NVR-CH01_S20210608-074038_E20210608-074100.mp4"
)

for vid in ${vid_list[@]}
do
    name=$(basename $vid)

    bash dla_inference $data_root${vid:1} ../exp/mot/uet_vtx/fairmot_dla_finetune_all_lr1e-3_lr1e-6_10epochs/model_last.pth \
                       ${name:0:-4}
    
    # bash test_echo.sh $'' ${name:0:-4}
done



