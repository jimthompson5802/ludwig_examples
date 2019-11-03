#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os
import os.path
import shutil


# ## start out with fresh data

# In[2]:


try:
    shutil.rmtree('./results')
except:
    pass


os.chdir('./data')
for digit_type in ['even', 'odd']:
    for name in ['training', 'testing']:
        file_name = os.path.join(digit_type,'mnist_dataset_{}.csv'.format(name))
        with open(file_name, 'w') as output_file:
            print('=== creating {} dataset ==='.format(file_name))
            output_file.write('image_path,label\n')
            digits = os.listdir(os.path.join(digit_type, name))
            for i in digits:
                path = '{}/{}/{}'.format(digit_type, name, i)
                for file in os.listdir(path):
                    if file.endswith(".png"):
                        output_file.write('{},{}\n'.format(os.path.join(name, i, file), str(i)))


# In[ ]:
print("Finished data preparation.")




