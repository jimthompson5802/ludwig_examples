#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os
import os.path
import shutil
from tensorflow.python.keras import datasets
from skimage import io


# ## start out with fresh data

# In[2]:


try:
    shutil.rmtree('./results')
except:
    pass


# ## Prepare data directory

# In[2]:


if not os.path.exists('./data'):
    os.makedirs('./data/training')
    os.makedirs('./data/testing')

    # retrieve mnist data
    train, test = datasets.mnist.load_data()

    # save images
    def save_images(data_dir, img_tuple):
        for img_idx in range(img_tuple[1].shape[0]):

            try: 
                if not os.path.exists(os.path.join('./data', data_dir, str(img_tuple[1][img_idx]))):
                    os.mkdir(os.path.join('./data', data_dir, str(img_tuple[1][img_idx])))
    
                img_file_name = os.path.join('./data/',data_dir,str(img_tuple[1][img_idx]),str(img_idx)+'.png')
                io.imsave(img_file_name,img_tuple[0][img_idx])
            except:
                print("error on ",data_dir, "image idx: ", img_idx)

            if img_idx % 1000 == 0:
                print(data_dir, " completed {} out of {}".format(img_idx,img_tuple[1].shape[0]), flush=True)

    save_images('training',train)
    save_images('testing', test)


# ## Prepare data for ludwig training

# In[6]:


os.chdir('./data')

for name in ['training', 'testing']:
    with open('mnist_dataset_{}.csv'.format(name), 'w') as output_file:
        print('=== creating {} dataset ==='.format(name))
        output_file.write('image_path,label\n')
        for i in range(10):
            path = '{}/{}'.format(name, i)
            for file in os.listdir(path):
                if file.endswith(".png"):
                    output_file.write('{},{}\n'.format(os.path.join(path, file), str(i)))


# In[ ]:
print("Finished data preparation.")




