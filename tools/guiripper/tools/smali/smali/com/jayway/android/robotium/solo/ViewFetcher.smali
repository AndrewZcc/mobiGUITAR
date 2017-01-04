.class Lcom/jayway/android/robotium/solo/ViewFetcher;
.super Ljava/lang/Object;
.source "ViewFetcher.java"


# static fields
.field private static windowManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private windowManagerString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 368
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 369
    const-string v1, "android.view.WindowManagerGlobal"

    .line 373
    .local v1, windowManagerClassName:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/jayway/android/robotium/solo/ViewFetcher;->windowManager:Ljava/lang/Class;

    .line 380
    :goto_1
    return-void

    .line 371
    .end local v1           #windowManagerClassName:Ljava/lang/String;
    :cond_0
    const-string v1, "android.view.WindowManagerImpl"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .restart local v1       #windowManagerClassName:Ljava/lang/String;
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 377
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/jayway/android/robotium/solo/ActivityUtils;)V
    .locals 0
    .parameter "activityUtils"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/ViewFetcher;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 32
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/ViewFetcher;->setWindowManagerString()V

    .line 33
    return-void
.end method

.method private addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    .locals 3
    .parameter
    .parameter "viewGroup"
    .parameter "onlySufficientlyVisible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_3

    .line 222
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 223
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, child:Landroid/view/View;
    if-eqz p3, :cond_2

    invoke-virtual {p0, v0}, Lcom/jayway/android/robotium/solo/ViewFetcher;->isViewSufficientlyShown(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    :goto_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 232
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-direct {p0, p1, v0, p3}, Lcom/jayway/android/robotium/solo/ViewFetcher;->addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V

    .line 222
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    if-nez p3, :cond_0

    .line 229
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method private final getNonDecorViews([Landroid/view/View;)[Landroid/view/View;
    .locals 6
    .parameter "views"

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, decorViews:[Landroid/view/View;
    if-eqz p1, :cond_1

    .line 167
    array-length v4, p1

    new-array v0, v4, [Landroid/view/View;

    .line 169
    const/4 v1, 0x0

    .line 172
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 173
    aget-object v3, p1, v2

    .line 174
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    aput-object v3, v0, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method private final getRecentContainer([Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "views"

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, container:Landroid/view/View;
    const-wide/16 v1, 0x0

    .line 146
    .local v1, drawingTime:J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 147
    aget-object v4, p1, v3

    .line 148
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-lez v5, :cond_0

    .line 149
    move-object v0, v4

    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v1

    .line 146
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    .end local v4           #view:Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method private setWindowManagerString()V
    .locals 2

    .prologue
    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 418
    const-string v0, "sDefaultWindowManager"

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ViewFetcher;->windowManagerString:Ljava/lang/String;

    .line 426
    :goto_0
    return-void

    .line 420
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 421
    const-string v0, "sWindowManager"

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ViewFetcher;->windowManagerString:Ljava/lang/String;

    goto :goto_0

    .line 424
    :cond_1
    const-string v0, "mWindowManager"

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/ViewFetcher;->windowManagerString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAllViews(Z)Ljava/util/ArrayList;
    .locals 7
    .parameter "onlySufficientlyVisible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getWindowDecorViews()[Landroid/view/View;

    move-result-object v5

    .line 82
    .local v5, views:[Landroid/view/View;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, allViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getNonDecorViews([Landroid/view/View;)[Landroid/view/View;

    move-result-object v3

    .line 84
    .local v3, nonDecorViews:[Landroid/view/View;
    const/4 v4, 0x0

    .line 86
    .local v4, view:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 87
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 88
    aget-object v4, v3, v2

    .line 90
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-direct {p0, v1, v6, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2           #i:I
    :cond_1
    if-eqz v5, :cond_2

    array-length v6, v5

    if-lez v6, :cond_2

    .line 97
    invoke-virtual {p0, v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getRecentDecorView([Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 99
    :try_start_1
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-direct {p0, v1, v6, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    return-object v1

    .line 100
    :catch_0
    move-exception v6

    goto :goto_2

    .line 91
    .restart local v2       #i:I
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentViews(Ljava/lang/Class;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, classToFilterBy:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v1, filteredViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v4, 0x1

    invoke-virtual {p0, p2, v4}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getViews(Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 319
    .local v0, allViews:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 320
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    invoke-virtual {p1, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .line 325
    return-object v1
.end method

.method public final getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 343
    .local v3, locationOnScreen:[I
    const/4 v5, 0x0

    .line 344
    .local v5, viewToReturn:Landroid/view/View;,"TT;"
    const-wide/16 v0, 0x0

    .line 345
    .local v0, drawingTime:J
    if-nez p1, :cond_0

    .line 346
    const/4 v6, 0x0

    .line 361
    :goto_0
    return-object v6

    .line 348
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 350
    .local v4, view:Landroid/view/View;,"TT;"
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 352
    const/4 v6, 0x0

    aget v6, v3, v6

    if-ltz v6, :cond_1

    .line 355
    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_1

    .line 356
    invoke-virtual {v4}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    .line 357
    move-object v5, v4

    goto :goto_1

    .line 360
    .end local v4           #view:Landroid/view/View;,"TT;"
    :cond_2
    const/4 p1, 0x0

    move-object v6, v5

    .line 361
    goto :goto_0
.end method

.method public final getRecentDecorView([Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "views"

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const/4 v4, 0x0

    .line 131
    :goto_0
    return-object v4

    .line 119
    :cond_0
    array-length v4, p1

    new-array v0, v4, [Landroid/view/View;

    .line 120
    .local v0, decorViews:[Landroid/view/View;
    const/4 v1, 0x0

    .line 123
    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 124
    aget-object v3, p1, v2

    .line 125
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    aput-object v3, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 123
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    .end local v3           #view:Landroid/view/View;
    :cond_2
    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getRecentContainer([Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public getScrollListWindowHeight(Landroid/view/View;)F
    .locals 5
    .parameter "view"

    .prologue
    .line 280
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 281
    .local v2, xyParent:[I
    invoke-virtual {p0, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getScrollOrListParent(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, parent:Landroid/view/View;
    if-nez v0, :cond_0

    .line 284
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/ViewFetcher;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 291
    .local v1, windowHeight:F
    :goto_0
    const/4 v0, 0x0

    .line 292
    return v1

    .line 288
    .end local v1           #windowHeight:F
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 289
    const/4 v3, 0x1

    aget v3, v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v1, v3

    .restart local v1       #windowHeight:F
    goto :goto_0
.end method

.method public getScrollOrListParent(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "view"

    .prologue
    .line 62
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getScrollOrListParent(Landroid/view/View;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 69
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 65
    .restart local p1
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getTopParent(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "view"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getTopParent(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 48
    .end local p1
    :cond_0
    return-object p1
.end method

.method public getViews(Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 3
    .parameter "parent"
    .parameter "onlySufficientlyVisible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 199
    invoke-virtual {p0, p2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 209
    .end local v1           #views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 201
    .restart local v1       #views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    move-object v0, p1

    .line 203
    .local v0, parentToUse:Landroid/view/View;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 206
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parentToUse:Landroid/view/View;
    invoke-direct {p0, v1, v0, p2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->addChildren(Ljava/util/ArrayList;Landroid/view/ViewGroup;Z)V

    goto :goto_0
.end method

.method public getWindowDecorViews()[Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 394
    :try_start_0
    sget-object v4, Lcom/jayway/android/robotium/solo/ViewFetcher;->windowManager:Ljava/lang/Class;

    const-string v6, "mViews"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 395
    .local v3, viewsField:Ljava/lang/reflect/Field;
    sget-object v4, Lcom/jayway/android/robotium/solo/ViewFetcher;->windowManager:Ljava/lang/Class;

    iget-object v6, p0, Lcom/jayway/android/robotium/solo/ViewFetcher;->windowManagerString:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 396
    .local v2, instanceField:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 397
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 398
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 399
    .local v1, instance:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/View;

    check-cast v4, [Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 409
    .end local v1           #instance:Ljava/lang/Object;
    .end local v2           #instanceField:Ljava/lang/reflect/Field;
    .end local v3           #viewsField:Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/SecurityException;
    :goto_1
    move-object v4, v5

    .line 409
    goto :goto_0

    .line 402
    :catch_1
    move-exception v0

    .line 403
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 404
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 406
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public final isViewSufficientlyShown(Landroid/view/View;)Z
    .locals 9
    .parameter "view"

    .prologue
    const/4 v6, 0x2

    const/high16 v8, 0x4000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 246
    new-array v3, v6, [I

    .line 247
    .local v3, xyView:[I
    new-array v2, v6, [I

    .line 249
    .local v2, xyParent:[I
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v4

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v1, v6

    .line 253
    .local v1, viewHeight:F
    invoke-virtual {p0, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getScrollOrListParent(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, parent:Landroid/view/View;
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 256
    if-nez v0, :cond_2

    .line 257
    aput v4, v2, v5

    .line 263
    :goto_1
    aget v6, v3, v5

    int-to-float v6, v6

    div-float v7, v1, v8

    add-float/2addr v6, v7

    invoke-virtual {p0, p1}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getScrollListWindowHeight(Landroid/view/View;)F

    move-result v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 266
    aget v6, v3, v5

    int-to-float v6, v6

    div-float v7, v1, v8

    add-float/2addr v6, v7

    aget v7, v2, v5

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    move v4, v5

    .line 269
    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_1
.end method
