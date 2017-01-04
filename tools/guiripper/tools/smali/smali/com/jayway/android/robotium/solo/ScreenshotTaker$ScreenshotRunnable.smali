.class Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "ScreenshotTaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/ScreenshotTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private quality:I

.field final synthetic this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "_view"
    .parameter "_name"
    .parameter "_quality"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->view:Landroid/view/View;

    .line 314
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->name:Ljava/lang/String;

    .line 315
    iput p4, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->quality:I

    .line 316
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 319
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 323
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->view:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    #calls: Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getBitmapOfWebView(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    invoke-static {v2, v1}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->access$300(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_2

    .line 329
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    #getter for: Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->access$500(Lcom/jayway/android/robotium/solo/ScreenshotTaker;)Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->name:Ljava/lang/String;

    iget v3, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->quality:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 333
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-void

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;->view:Landroid/view/View;

    #calls: Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->access$400(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #b:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 331
    :cond_2
    const-string v1, "Robotium"

    const-string v2, "NULL BITMAP!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
