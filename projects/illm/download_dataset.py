import numpy

from PIL.Image import Image 

from neuralcompression.data import CLIC2020Image

if __name__ == '__main__':

    images = CLIC2020Image(split='test', root='./data')
    images.download()
    images = CLIC2020Image(split='val', root='./data')
    images.download()
    images = CLIC2020Image(split='train', root='./data')
    images.download()
    
    