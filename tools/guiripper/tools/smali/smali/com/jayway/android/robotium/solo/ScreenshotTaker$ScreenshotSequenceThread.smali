.class Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;
.super Ljava/lang/Thread;
.source "ScreenshotTaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/ScreenshotTaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenshotSequenceThread"
.end annotation


# instance fields
.field private frameDelay:I

.field private keepRunning:Z

.field private maxFrames:I

.field private name:Ljava/lang/String;

.field private quality:I

.field private seqno:I

.field final synthetic this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Ljava/lang/String;III)V
    .locals 1
    .parameter
    .parameter "_name"
    .parameter "_quality"
    .parameter "_frameDelay"
    .parameter "_maxFrames"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->keepRunning:Z

    .line 266
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->name:Ljava/lang/String;

    .line 267
    iput p3, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->quality:I

    .line 268
    iput p4, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->frameDelay:I

    .line 269
    iput p5, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->maxFrames:I

    .line 270
    return-void
.end method


# virtual methods
.method public doScreenshot()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    #calls: Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getScreenshotView()Landroid/view/View;
    invoke-static {v3}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->access$100(Lcom/jayway/android/robotium/solo/ScreenshotTaker;)Landroid/view/View;

    move-result-object v2

    .line 287
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    iput-boolean v6, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->keepRunning:Z

    .line 288
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, final_name:Ljava/lang/String;
    new-instance v1, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    iget v4, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->quality:I

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;-><init>(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/view/View;Ljava/lang/String;I)V

    .line 290
    .local v1, r:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;
    const-string v3, "Robotium"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "taking screenshot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    #getter for: Lcom/jayway/android/robotium/solo/ScreenshotTaker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;
    invoke-static {v3}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->access$200(Lcom/jayway/android/robotium/solo/ScreenshotTaker;)Lcom/jayway/android/robotium/solo/ActivityUtils;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->keepRunning:Z

    .line 296
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 297
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 273
    :goto_0
    iget v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    iget v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->maxFrames:I

    if-ge v0, v1, :cond_0

    .line 274
    iget-boolean v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->keepRunning:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->this$0:Lcom/jayway/android/robotium/solo/ScreenshotTaker;

    const/4 v1, 0x0

    #setter for: Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;
    invoke-static {v0, v1}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->access$002(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;)Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    .line 283
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->doScreenshot()V

    .line 276
    iget v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->seqno:I

    .line 278
    :try_start_0
    iget v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->frameDelay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0
.end method
