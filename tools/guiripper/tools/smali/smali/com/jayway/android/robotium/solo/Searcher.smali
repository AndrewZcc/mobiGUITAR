.class Lcom/jayway/android/robotium/solo/Searcher;
.super Ljava/lang/Object;
.source "Searcher.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final TIMEOUT:I

.field private numberOfUniqueViews:I

.field private final scroller:Lcom/jayway/android/robotium/solo/Scroller;

.field private final sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

.field uniqueTextViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

.field webElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation
.end field

.field private final webUtils:Lcom/jayway/android/robotium/solo/WebUtils;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/WebUtils;Lcom/jayway/android/robotium/solo/Scroller;Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 1
    .parameter "viewFetcher"
    .parameter "webUtils"
    .parameter "scroller"
    .parameter "sleeper"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "Robotium"

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->LOG_TAG:Ljava/lang/String;

    .line 33
    const/16 v0, 0x1388

    iput v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->TIMEOUT:I

    .line 46
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Searcher;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 47
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Searcher;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    .line 48
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/Searcher;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    .line 49
    iput-object p4, p0, Lcom/jayway/android/robotium/solo/Searcher;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->webElements:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/jayway/android/robotium/solo/Searcher;)Lcom/jayway/android/robotium/solo/Sleeper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jayway/android/robotium/solo/Searcher;)Lcom/jayway/android/robotium/solo/ViewFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/jayway/android/robotium/solo/Searcher;)Lcom/jayway/android/robotium/solo/WebUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    return-object v0
.end method

.method private addViewsToList(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, allWebElements:Ljava/util/List;,"Ljava/util/List<Lcom/jayway/android/robotium/solo/WebElement;>;"
    .local p2, webElementsOnScreen:Ljava/util/List;,"Ljava/util/List<Lcom/jayway/android/robotium/solo/WebElement;>;"
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 254
    new-array v6, v7, [I

    .line 255
    .local v6, xyViewFromSet:[I
    new-array v5, v7, [I

    .line 257
    .local v5, xyViewFromScreen:[I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jayway/android/robotium/solo/WebElement;

    .line 258
    .local v4, textFromScreen:Lcom/jayway/android/robotium/solo/WebElement;
    const/4 v0, 0x0

    .line 259
    .local v0, foundView:Z
    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationOnScreen([I)V

    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jayway/android/robotium/solo/WebElement;

    .line 262
    .local v3, textFromList:Lcom/jayway/android/robotium/solo/WebElement;
    invoke-virtual {v3, v6}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationOnScreen([I)V

    .line 264
    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/WebElement;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/jayway/android/robotium/solo/WebElement;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget v7, v5, v9

    aget v8, v6, v9

    if-ne v7, v8, :cond_1

    aget v7, v5, v10

    aget v8, v6, v10

    if-ne v7, v8, :cond_1

    .line 265
    const/4 v0, 0x1

    goto :goto_1

    .line 269
    .end local v3           #textFromList:Lcom/jayway/android/robotium/solo/WebElement;
    :cond_2
    if-nez v0, :cond_0

    .line 270
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v0           #foundView:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #textFromScreen:Lcom/jayway/android/robotium/solo/WebElement;
    :cond_3
    return-void
.end method

.method private getViewFromList(Ljava/util/List;I)Lcom/jayway/android/robotium/solo/WebElement;
    .locals 3
    .parameter
    .parameter "match"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;I)",
            "Lcom/jayway/android/robotium/solo/WebElement;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, webElements:Ljava/util/List;,"Ljava/util/List<Lcom/jayway/android/robotium/solo/WebElement;>;"
    const/4 v1, 0x0

    .line 288
    .local v1, webElementToReturn:Lcom/jayway/android/robotium/solo/WebElement;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p2, :cond_0

    .line 291
    add-int/lit8 p2, p2, -0x1

    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/jayway/android/robotium/solo/WebElement;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 295
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 297
    :cond_1
    return-object v1

    .line 292
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getNumberOfUniqueViews()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->numberOfUniqueViews:I

    return v0
.end method

.method public getNumberOfUniqueViews(Ljava/util/Set;Ljava/util/ArrayList;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, uniqueViews:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p2, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 310
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lcom/jayway/android/robotium/solo/Searcher;->numberOfUniqueViews:I

    .line 313
    iget v1, p0, Lcom/jayway/android/robotium/solo/Searcher;->numberOfUniqueViews:I

    return v1
.end method

.method public logMatchesFound(Ljava/lang/String;)V
    .locals 3
    .parameter "regex"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 334
    const-string v0, "Robotium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " There are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matches of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 340
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 337
    const-string v0, "Robotium"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " There are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matches of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public searchFor(Ljava/lang/Class;Ljava/lang/String;IJZZ)Landroid/widget/TextView;
    .locals 8
    .parameter
    .parameter "regex"
    .parameter "expectedMinimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"
    .parameter "onlyVisible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "IJZZ)TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 104
    const/4 p3, 0x1

    .line 107
    :cond_0
    new-instance v1, Lcom/jayway/android/robotium/solo/Searcher$1;

    invoke-direct {v1, p0, p1, p7}, Lcom/jayway/android/robotium/solo/Searcher$1;-><init>(Lcom/jayway/android/robotium/solo/Searcher;Ljava/lang/Class;Z)V

    .local v1, viewFetcherCallback:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/Collection<TT;>;>;"
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 126
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/jayway/android/robotium/solo/Searcher;->searchFor(Ljava/util/concurrent/Callable;Ljava/lang/String;IJZ)Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 127
    :catch_0
    move-exception v7

    .line 128
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public searchFor(Ljava/util/concurrent/Callable;Ljava/lang/String;IJZ)Landroid/widget/TextView;
    .locals 8
    .parameter
    .parameter "regex"
    .parameter "expectedMinimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/widget/TextView;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;",
            "Ljava/lang/String;",
            "IJZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    .local p1, viewFetcherCallback:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/util/Collection<TT;>;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long v0, v6, p4

    .line 197
    .local v0, endTime:J
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-lez v6, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_1

    const/4 v3, 0x1

    .line 199
    .local v3, timedOut:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {p0, p2}, Lcom/jayway/android/robotium/solo/Searcher;->logMatchesFound(Ljava/lang/String;)V

    .line 201
    const/4 v4, 0x0

    .line 218
    :goto_1
    return-object v4

    .line 197
    .end local v3           #timedOut:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 204
    .restart local v3       #timedOut:Z
    :cond_2
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 206
    .local v5, views:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 207
    .local v4, view:Landroid/widget/TextView;,"TT;"
    iget-object v6, p0, Lcom/jayway/android/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-static {p2, v4, v6}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->getNumberOfMatches(Ljava/lang/String;Landroid/widget/TextView;Ljava/util/Set;)I

    move-result v6

    if-ne v6, p3, :cond_3

    .line 208
    iget-object v6, p0, Lcom/jayway/android/robotium/solo/Searcher;->uniqueTextViews:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    goto :goto_1

    .line 212
    .end local v4           #view:Landroid/widget/TextView;,"TT;"
    :cond_4
    if-eqz p6, :cond_5

    iget-object v6, p0, Lcom/jayway/android/robotium/solo/Searcher;->scroller:Lcom/jayway/android/robotium/solo/Scroller;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/jayway/android/robotium/solo/Scroller;->scroll(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 213
    invoke-virtual {p0, p2}, Lcom/jayway/android/robotium/solo/Searcher;->logMatchesFound(Ljava/lang/String;)V

    .line 214
    const/4 v4, 0x0

    goto :goto_1

    .line 216
    :cond_5
    if-nez p6, :cond_0

    .line 217
    invoke-virtual {p0, p2}, Lcom/jayway/android/robotium/solo/Searcher;->logMatchesFound(Ljava/lang/String;)V

    .line 218
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public searchFor(Landroid/view/View;)Z
    .locals 5
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 165
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/Searcher;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v4, v3}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getAllViews(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 166
    .local v2, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 167
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public searchFor(Ljava/util/Set;Ljava/lang/Class;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .local p1, uniqueViews:Ljava/util/Set;,"Ljava/util/Set<TT;>;"
    .local p2, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v2, 0x1

    .line 142
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/Searcher;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    invoke-virtual {v3, p2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, allViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0, p1, v0}, Lcom/jayway/android/robotium/solo/Searcher;->getNumberOfUniqueViews(Ljava/util/Set;Ljava/util/ArrayList;)I

    move-result v1

    .line 146
    .local v1, uniqueViewsFound:I
    if-lez v1, :cond_1

    if-ge p3, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v2

    .line 150
    :cond_1
    if-lez v1, :cond_2

    if-eqz p3, :cond_0

    .line 153
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public searchForWebElement(Lcom/jayway/android/robotium/solo/By;IIZ)Lcom/jayway/android/robotium/solo/WebElement;
    .locals 2
    .parameter "by"
    .parameter "minimumNumberOfMatches"
    .parameter "timeout"
    .parameter "scroll"

    .prologue
    .line 235
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 236
    const/4 p2, 0x1

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Searcher;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;

    invoke-virtual {v1, p1}, Lcom/jayway/android/robotium/solo/WebUtils;->getCurrentWebElements(Lcom/jayway/android/robotium/solo/By;)Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    .local v0, viewsFromScreen:Ljava/util/List;,"Ljava/util/List<Lcom/jayway/android/robotium/solo/WebElement;>;"
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/jayway/android/robotium/solo/Searcher;->addViewsToList(Ljava/util/List;Ljava/util/List;)V

    .line 242
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Searcher;->webElements:Ljava/util/List;

    invoke-direct {p0, v1, p2}, Lcom/jayway/android/robotium/solo/Searcher;->getViewFromList(Ljava/util/List;I)Lcom/jayway/android/robotium/solo/WebElement;

    move-result-object v1

    return-object v1
.end method

.method public searchWithTimeoutFor(Ljava/lang/Class;Ljava/lang/String;IZZ)Z
    .locals 11
    .parameter
    .parameter "regex"
    .parameter "expectedMinimumNumberOfMatches"
    .parameter "scroll"
    .parameter "onlyVisible"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, viewClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/widget/TextView;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long v8, v0, v2

    .line 73
    .local v8, endTime:J
    const/4 v10, 0x0

    .line 75
    .local v10, foundAnyMatchingView:Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/Searcher;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;

    invoke-virtual {v0}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 77
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/jayway/android/robotium/solo/Searcher;->searchFor(Ljava/lang/Class;Ljava/lang/String;IJZZ)Landroid/widget/TextView;

    move-result-object v10

    .line 78
    if-eqz v10, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
