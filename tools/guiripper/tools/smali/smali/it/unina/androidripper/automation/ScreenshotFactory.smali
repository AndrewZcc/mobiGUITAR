.class public Lit/unina/androidripper/automation/ScreenshotFactory;
.super Ljava/lang/Object;
.source "ScreenshotFactory.java"


# static fields
.field private static theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

.field private static theImageStorage:Lit/unina/androidripper/model/ImageStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    .line 14
    sput-object v0, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageStorage:Lit/unina/androidripper/model/ImageStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageStorage:Lit/unina/androidripper/model/ImageStorage;

    invoke-interface {v0}, Lit/unina/androidripper/model/ImageStorage;->imageFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageCaptor()Lit/unina/androidripper/model/ImageCaptor;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    return-object v0
.end method

.method public static getTheImageStorage()Lit/unina/androidripper/model/ImageStorage;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageStorage:Lit/unina/androidripper/model/ImageStorage;

    return-object v0
.end method

.method public static saveScreenshot(Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 33
    sget-object v2, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    invoke-interface {v2}, Lit/unina/androidripper/model/ImageCaptor;->captureImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 36
    const/4 v2, 0x0

    .line 44
    :goto_0
    return v2

    .line 39
    :cond_0
    :try_start_0
    sget-object v2, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageStorage:Lit/unina/androidripper/model/ImageStorage;

    invoke-interface {v2, v0, p0}, Lit/unina/androidripper/model/ImageStorage;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 42
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setImageCaptor(Lit/unina/androidripper/model/ImageCaptor;)V
    .locals 0
    .parameter "theCaptor"

    .prologue
    .line 29
    sput-object p0, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageCaptor:Lit/unina/androidripper/model/ImageCaptor;

    .line 30
    return-void
.end method

.method public static setTheImageStorage(Lit/unina/androidripper/model/ImageStorage;)V
    .locals 0
    .parameter "imageStorage"

    .prologue
    .line 21
    sput-object p0, Lit/unina/androidripper/automation/ScreenshotFactory;->theImageStorage:Lit/unina/androidripper/model/ImageStorage;

    .line 22
    return-void
.end method
