.class Lcom/jayway/android/robotium/solo/WebElementCreator;
.super Ljava/lang/Object;
.source "WebElementCreator.java"


# instance fields
.field private isFinished:Z

.field private sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field private webElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 1
    .parameter "sleeper"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->isFinished:Z

    .line 31
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 32
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->webElements:Ljava/util/List;

    .line 33
    return-void
.end method

.method private createWebElementAndSetLocation(Ljava/lang/String;Landroid/webkit/WebView;)Lcom/jayway/android/robotium/solo/WebElement;
    .locals 12
    .parameter "information"
    .parameter "webView"

    .prologue
    .line 124
    const-string v1, ";,"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, data:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 126
    .local v10, x:I
    const/4 v11, 0x0

    .line 127
    .local v11, y:I
    const/4 v6, 0x0

    .line 128
    .local v6, width:I
    const/4 v7, 0x0

    .line 130
    .local v7, height:I
    const/4 v1, 0x5

    :try_start_0
    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 131
    const/4 v1, 0x6

    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 132
    const/4 v1, 0x7

    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 133
    const/16 v1, 0x8

    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 136
    :goto_0
    const/4 v9, 0x0

    .line 139
    .local v9, webElement:Lcom/jayway/android/robotium/solo/WebElement;
    :try_start_1
    new-instance v0, Lcom/jayway/android/robotium/solo/WebElement;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    const/4 v2, 0x1

    aget-object v2, v8, v2

    const/4 v3, 0x2

    aget-object v3, v8, v3

    const/4 v4, 0x3

    aget-object v4, v8, v4

    const/4 v5, 0x4

    aget-object v5, v8, v5

    invoke-direct/range {v0 .. v5}, Lcom/jayway/android/robotium/solo/WebElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9           #webElement:Lcom/jayway/android/robotium/solo/WebElement;
    .local v0, webElement:Lcom/jayway/android/robotium/solo/WebElement;
    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move v4, v10

    move v5, v11

    .line 140
    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/jayway/android/robotium/solo/WebElementCreator;->setLocation(Lcom/jayway/android/robotium/solo/WebElement;Landroid/webkit/WebView;IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    :goto_1
    return-object v0

    .line 141
    .end local v0           #webElement:Lcom/jayway/android/robotium/solo/WebElement;
    .restart local v9       #webElement:Lcom/jayway/android/robotium/solo/WebElement;
    :catch_0
    move-exception v1

    move-object v0, v9

    .end local v9           #webElement:Lcom/jayway/android/robotium/solo/WebElement;
    .restart local v0       #webElement:Lcom/jayway/android/robotium/solo/WebElement;
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    .line 134
    .end local v0           #webElement:Lcom/jayway/android/robotium/solo/WebElement;
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private setLocation(Lcom/jayway/android/robotium/solo/WebElement;Landroid/webkit/WebView;IIII)V
    .locals 10
    .parameter "webElement"
    .parameter "webView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    .line 104
    .local v3, scale:F
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 105
    .local v0, locationOfWebViewXY:[I
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 107
    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-double v4, v4

    int-to-double v6, p3

    div-int/lit8 v8, p5, 0x2

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    float-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 108
    .local v1, locationX:I
    const/4 v4, 0x1

    aget v4, v0, v4

    int-to-double v4, v4

    int-to-double v6, p4

    div-int/lit8 v8, p6, 0x2

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    float-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    .line 110
    .local v2, locationY:I
    invoke-virtual {p1, v1}, Lcom/jayway/android/robotium/solo/WebElement;->setLocationX(I)V

    .line 111
    invoke-virtual {p1, v2}, Lcom/jayway/android/robotium/solo/WebElement;->setLocationY(I)V

    .line 112
    return-void
.end method

.method private waitForWebElementsToBeCreted()Z
    .locals 6

    .prologue
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long v0, v2, v4

    .line 155
    .local v0, endTime:J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    .line 157
    iget-boolean v2, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->isFinished:Z

    if-eqz v2, :cond_0

    .line 158
    const/4 v2, 0x1

    .line 163
    :goto_1
    return v2

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/Sleeper;->sleepMini()V

    goto :goto_0

    .line 163
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public createWebElementAndAddInList(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webData"
    .parameter "webView"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/jayway/android/robotium/solo/WebElementCreator;->createWebElementAndSetLocation(Ljava/lang/String;Landroid/webkit/WebView;)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v0

    .line 87
    .local v0, webElement:Lcom/jayway/android/robotium/solo/WebElement;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->webElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public getWebElementsFromWebViews()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/WebElementCreator;->waitForWebElementsToBeCreted()Z

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->webElements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->isFinished:Z

    return v0
.end method

.method public prepareForStart()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jayway/android/robotium/solo/WebElementCreator;->setFinished(Z)V

    .line 41
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->webElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    return-void
.end method

.method public setFinished(Z)V
    .locals 0
    .parameter "isFinished"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/jayway/android/robotium/solo/WebElementCreator;->isFinished:Z

    .line 74
    return-void
.end method
