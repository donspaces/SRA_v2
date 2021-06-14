import reportflow as rep
import model_clear as mcl
import os
import shutil

def main():
    try:
        mcl.model_clear()
        for i in os.listdir('data'):
            # print(i)
            pathr = "data/" + i
            if(os.path.isdir(pathr) and not i.startswith(".")):
                rep.reportflow(i)
                shutil.move(pathr, "rest/")
                print("successfully processed the data.")
        print("all datas in report folder are the latest version.")
    except Exception as e:
        print("app caught an error due to", e.args)

if __name__ == '__main__':
    main()