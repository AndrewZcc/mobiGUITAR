.class Lcom/jayway/android/robotium/solo/ScreenshotTaker;
.super Ljava/lang/Object;
.source "ScreenshotTaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;,
        Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;,
        Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private screenShotSaver:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;

.field private screenShotSaverThread:Landroid/os/HandlerThread;

.field private screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field private final viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 2
    .parameter "activityUtils"
    .parameter "viewFetcher"
    .parameter "sleeper"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "Robotium"

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->LOG_TAG:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    .line 37
    iput-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    .line 38
    iput-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    .line 52
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 53
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 54
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 55
    return-void
.end method

.method static synthetic access$002(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;)Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jayway/android/robotium/solo/ScreenshotTaker;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getScreenshotView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/jayway/android/robotium/solo/ScreenshotTaker;)Lcom/jayway/android/robotium/solo/ActivityUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getBitmapOfWebView(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/jayway/android/robotium/solo/ScreenshotTaker;)Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 210
    invoke-virtual {p1, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 212
    .local v2, orig:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 213
    .local v1, config:Landroid/graphics/Bitmap$Config;
    if-nez v1, :cond_0

    .line 214
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 215
    :cond_0
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 217
    return-object v0
.end method

.method private getBitmapOfWebView(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "webView"

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    .line 194
    .local v2, picture:Landroid/graphics/Picture;
    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Picture;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 197
    return-object v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 229
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "ddMMyy-hhmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 231
    .local v0, fileName:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getScreenshotView()Landroid/view/View;
    .locals 8

    .prologue
    .line 127
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v5, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getWindowDecorViews()[Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getRecentDecorView([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, decorView:Landroid/view/View;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/jayway/android/robotium/solo/Timeout;->getSmallTimeout()I

    move-result v6

    int-to-long v6, v6

    add-long v1, v4, v6

    .line 130
    .local v1, endTime:J
    :goto_0
    if-nez v0, :cond_2

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 134
    .local v3, timedOut:Z
    :goto_1
    if-eqz v3, :cond_1

    .line 135
    const/4 v0, 0x0

    .line 142
    .end local v0           #decorView:Landroid/view/View;
    .end local v3           #timedOut:Z
    :goto_2
    return-object v0

    .line 132
    .restart local v0       #decorView:Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 137
    .restart local v3       #timedOut:Z
    :cond_1
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    .line 138
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v5, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getWindowDecorViews()[Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getRecentDecorView([Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 139
    goto :goto_0

    .line 140
    .end local v3           #timedOut:Z
    :cond_2
    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->wrapAllGLViews(Landroid/view/View;)V

    goto :goto_2
.end method

.method private initScreenShotSaver()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    if-nez v0, :cond_1

    .line 245
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ScreenShotSaver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    .line 246
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 247
    new-instance v0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaverThread:Landroid/os/HandlerThread;

    invoke-direct {v0, p0, v1}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;-><init>(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenShotSaver:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenShotSaver;

    .line 249
    :cond_1
    return-void
.end method

.method private wrapAllGLViews(Landroid/view/View;)V
    .locals 10
    .parameter "decorView"

    .prologue
    .line 149
    iget-object v8, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v9, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v8, v9, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    .local v0, currentViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/opengl/GLSurfaceView;>;"
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 152
    .local v4, latch:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/opengl/GLSurfaceView;

    .line 153
    .local v2, glView:Landroid/opengl/GLSurfaceView;
    new-instance v8, Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {v8, v2}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v9, "mGLThread"

    invoke-virtual {v8, v9}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v8

    const-class v9, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v8, v9}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->type(Ljava/lang/Class;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v8

    const-class v9, Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 156
    .local v5, renderContainer:Ljava/lang/Object;
    new-instance v8, Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {v8, v5}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v9, "mRenderer"

    invoke-virtual {v8, v9}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v8

    const-class v9, Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v8, v9}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/opengl/GLSurfaceView$Renderer;

    .line 158
    .local v6, renderer:Landroid/opengl/GLSurfaceView$Renderer;
    if-nez v6, :cond_0

    .line 159
    new-instance v8, Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {v8, v2}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v9, "mRenderer"

    invoke-virtual {v8, v9}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v8

    const-class v9, Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v8, v9}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #renderer:Landroid/opengl/GLSurfaceView$Renderer;
    check-cast v6, Landroid/opengl/GLSurfaceView$Renderer;

    .line 160
    .restart local v6       #renderer:Landroid/opengl/GLSurfaceView$Renderer;
    move-object v5, v2

    .line 162
    .end local v5           #renderContainer:Ljava/lang/Object;
    :cond_0
    if-nez v6, :cond_1

    .line 163
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 166
    :cond_1
    instance-of v8, v6, Lcom/jayway/android/robotium/solo/GLRenderWrapper;

    if-eqz v8, :cond_2

    move-object v7, v6

    .line 167
    check-cast v7, Lcom/jayway/android/robotium/solo/GLRenderWrapper;

    .line 168
    .local v7, wrapper:Lcom/jayway/android/robotium/solo/GLRenderWrapper;
    invoke-virtual {v7}, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->setTakeScreenshot()V

    .line 169
    invoke-virtual {v7, v4}, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    goto :goto_0

    .line 171
    .end local v7           #wrapper:Lcom/jayway/android/robotium/solo/GLRenderWrapper;
    :cond_2
    new-instance v7, Lcom/jayway/android/robotium/solo/GLRenderWrapper;

    invoke-direct {v7, v2, v6, v4}, Lcom/jayway/android/robotium/solo/GLRenderWrapper;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;Ljava/util/concurrent/CountDownLatch;)V

    .line 172
    .restart local v7       #wrapper:Lcom/jayway/android/robotium/solo/GLRenderWrapper;
    new-instance v8, Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {v8, v5}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v9, "mRenderer"

    invoke-virtual {v8, v9}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->in(Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    .end local v2           #glView:Landroid/opengl/GLSurfaceView;
    .end local v6           #renderer:Landroid/opengl/GLSurfaceView$Renderer;
    .end local v7           #wrapper:Lcom/jayway/android/robotium/solo/GLRenderWrapper;
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public startScreenshotSequence(Ljava/lang/String;III)V
    .locals 6
    .parameter "name"
    .parameter "quality"
    .parameter "frameDelay"
    .parameter "maxFrames"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->initScreenShotSaver()V

    .line 101
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only one screenshot sequence is supported at a time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;-><init>(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    .line 107
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->start()V

    .line 108
    return-void
.end method

.method public stopScreenshotSequence()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;->interrupt()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->screenshotSequenceThread:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotSequenceThread;

    .line 121
    :cond_0
    return-void
.end method

.method public takeScreenshot(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "quality"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->getScreenshotView()Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, decorView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->initScreenShotSaver()V

    .line 71
    new-instance v1, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;-><init>(Lcom/jayway/android/robotium/solo/ScreenshotTaker;Landroid/view/View;Ljava/lang/String;I)V

    .line 72
    .local v1, runnable:Lcom/jayway/android/robotium/solo/ScreenshotTaker$ScreenshotRunnable;
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/ScreenshotTaker;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
