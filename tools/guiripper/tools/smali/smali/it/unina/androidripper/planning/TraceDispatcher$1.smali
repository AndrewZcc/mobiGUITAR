.class Lit/unina/androidripper/planning/TraceDispatcher$1;
.super Ljava/lang/Object;
.source "TraceDispatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/unina/androidripper/planning/TraceDispatcher;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/nofatclips/androidtesting/model/Trace;",
        ">;"
    }
.end annotation


# instance fields
.field lastTask:Lcom/nofatclips/androidtesting/model/Trace;

.field final synthetic this$0:Lit/unina/androidripper/planning/TraceDispatcher;


# direct methods
.method constructor <init>(Lit/unina/androidripper/planning/TraceDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->this$0:Lit/unina/androidripper/planning/TraceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->this$0:Lit/unina/androidripper/planning/TraceDispatcher;

    #getter for: Lit/unina/androidripper/planning/TraceDispatcher;->scheduler:Lit/unina/androidripper/model/TaskScheduler;
    invoke-static {v0}, Lit/unina/androidripper/planning/TraceDispatcher;->access$000(Lit/unina/androidripper/planning/TraceDispatcher;)Lit/unina/androidripper/model/TaskScheduler;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/TaskScheduler;->hasMore()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/nofatclips/androidtesting/model/Trace;
    .locals 3

    .prologue
    .line 80
    iget-object v2, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->this$0:Lit/unina/androidripper/planning/TraceDispatcher;

    #getter for: Lit/unina/androidripper/planning/TraceDispatcher;->scheduler:Lit/unina/androidripper/model/TaskScheduler;
    invoke-static {v2}, Lit/unina/androidripper/planning/TraceDispatcher;->access$000(Lit/unina/androidripper/planning/TraceDispatcher;)Lit/unina/androidripper/model/TaskScheduler;

    move-result-object v2

    invoke-interface {v2}, Lit/unina/androidripper/model/TaskScheduler;->nextTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v2

    iput-object v2, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->lastTask:Lcom/nofatclips/androidtesting/model/Trace;

    .line 81
    iget-object v2, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->this$0:Lit/unina/androidripper/planning/TraceDispatcher;

    iget-object v2, v2, Lit/unina/androidripper/planning/TraceDispatcher;->theListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/DispatchListener;

    .line 82
    .local v1, theListener:Lit/unina/androidripper/model/DispatchListener;
    iget-object v2, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->lastTask:Lcom/nofatclips/androidtesting/model/Trace;

    invoke-interface {v1, v2}, Lit/unina/androidripper/model/DispatchListener;->onTaskDispatched(Lcom/nofatclips/androidtesting/model/Trace;)V

    goto :goto_0

    .line 84
    .end local v1           #theListener:Lit/unina/androidripper/model/DispatchListener;
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TraceDispatcher$1;->remove()V

    .line 85
    iget-object v2, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->lastTask:Lcom/nofatclips/androidtesting/model/Trace;

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TraceDispatcher$1;->next()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->this$0:Lit/unina/androidripper/planning/TraceDispatcher;

    #getter for: Lit/unina/androidripper/planning/TraceDispatcher;->scheduler:Lit/unina/androidripper/model/TaskScheduler;
    invoke-static {v0}, Lit/unina/androidripper/planning/TraceDispatcher;->access$000(Lit/unina/androidripper/planning/TraceDispatcher;)Lit/unina/androidripper/model/TaskScheduler;

    move-result-object v0

    iget-object v1, p0, Lit/unina/androidripper/planning/TraceDispatcher$1;->lastTask:Lcom/nofatclips/androidtesting/model/Trace;

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/TaskScheduler;->remove(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 90
    return-void
.end method
