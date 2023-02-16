from PIL import Image
import os

icons = os.listdir("./")

for iconNum in range(len(icons)):
    imageNameRaw = icons[iconNum]
    if not imageNameRaw.endswith(".png") or not imageNameRaw.startswith("icon-"):
        continue
    image = Image.open(imageNameRaw)
    print(image)
    image = image.crop((0, 0, int(image.size[0] / 2), image.size[1]))
    if image.size[0] < 512 and image.size[1] < 512:
        image = image.resize((int(image.size[0] * (1024 / image.size[0])),
                              int(image.size[1] * (1024 / image.size[0]))))
        image = image.crop((0, 0, image.size[0], image.size[1] - 25))
    print(image)
    image.save("rpcicons/" + imageNameRaw.replace("icon-", ""))
