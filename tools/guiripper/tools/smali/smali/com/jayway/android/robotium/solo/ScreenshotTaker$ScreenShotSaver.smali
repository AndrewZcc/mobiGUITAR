.class Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;
.super Landroid/os/Handler;
.source "ScreenshotTaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/ScreenshotTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenShotSaver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/os/HandlerThread;)V
    .locals 1
    .parameter
    .parameter "thread"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    .line 349
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 350
    return-void
.end method

.method private saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 8
    .parameter "name"
    .parameter "b"
    .parameter "quality"

    .prologue
    .line 391
    const/4 v4, 0x0

    .line 392
    .local v4, fos:Ljava/io/FileOutputStream;
    iget-object v6, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    #calls: Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getFileName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, p1}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->access$600(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    .local v2, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Robotium-Screenshots/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 397
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    .local v3, fileToSave:Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v6, p3, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 401
    const-string v6, "Robotium"

    const-string v7, "Compress/Write failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 403
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 408
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const-string v6, "Robotium"

    const-string v7, "Can\'t save the screenshot! Requires write permission (android.permission.WRITE_EXTERNAL_STORAGE) in AndroidManifest.xml of the application under test."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, name:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 375
    .local v2, quality:I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 376
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0, v1, v0, v2}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;->saveFile(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    const-string v3, "Robotium"

    const-string v4, "NULL BITMAP!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "name"
    .parameter "quality"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 361
    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 362
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 363
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, v0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;->sendMessage(Landroid/os/Message;)Z

    .line 365
    return-void
.end method
