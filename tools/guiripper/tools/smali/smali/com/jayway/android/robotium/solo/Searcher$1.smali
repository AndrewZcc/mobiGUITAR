.class Lcom/jayway/android/robotium/solo/Searcher$1;
.super Ljava/lang/Object;
.source "Searcher.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/android/robotium/solo/Searcher;->searchFor(Ljava/lang/Class;Ljava/lang/String;IJZZ)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/Collection",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jayway/android/robotium/solo/Searcher;

.field final synthetic val$onlyVisible:Z

.field final synthetic val$viewClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/jayway/android/robotium/solo/Searcher;Ljava/lang/Class;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->this$0:Lcom/jayway/android/robotium/solo/Searcher;

    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->val$viewClass:Ljava/lang/Class;

    iput-boolean p3, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->val$onlyVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/jayway/android/robotium/solo/Searcher$1;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->this$0:Lcom/jayway/android/robotium/solo/Searcher;

    #getter for: Lcom/jayway/android/robotium/solo/Searcher;->sleeper:Lcom/jayway/android/robotium/solo/Sleeper;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/Searcher;->access$000(Lcom/jayway/android/robotium/solo/Searcher;)Lcom/jayway/android/robotium/solo/Sleeper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/Sleeper;->sleep()V

    .line 112
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->this$0:Lcom/jayway/android/robotium/solo/Searcher;

    #getter for: Lcom/jayway/android/robotium/solo/Searcher;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/Searcher;->access$100(Lcom/jayway/android/robotium/solo/Searcher;)Lcom/jayway/android/robotium/solo/ViewFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->val$viewClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    .local v0, viewsToReturn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    iget-boolean v1, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->val$onlyVisible:Z

    if-eqz v1, :cond_0

    .line 115
    invoke-static {v0}, Lcom/jayway/android/robotium/solo/RobotiumUtils;->removeInvisibleViews(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->val$viewClass:Ljava/lang/Class;

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Searcher$1;->this$0:Lcom/jayway/android/robotium/solo/Searcher;

    #getter for: Lcom/jayway/android/robotium/solo/Searcher;->webUtils:Lcom/jayway/android/robotium/solo/WebUtils;
    invoke-static {v1}, Lcom/jayway/android/robotium/solo/Searcher;->access$200(Lcom/jayway/android/robotium/solo/Searcher;)Lcom/jayway/android/robotium/solo/WebUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/WebUtils;->getTextViewsFromWebView()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    :cond_1
    return-object v0
.end method
