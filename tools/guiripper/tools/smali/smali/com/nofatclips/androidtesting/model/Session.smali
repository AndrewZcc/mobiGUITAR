.class public interface abstract Lcom/nofatclips/androidtesting/model/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nofatclips/androidtesting/model/Trace;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addCrashedTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
.end method

.method public abstract addFailedTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
.end method

.method public abstract addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getComparationWidgets()Ljava/lang/String;
.end method

.method public abstract getDateTime()Ljava/lang/String;
.end method

.method public abstract getInAndOutFocus()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getSleepAfterEvent()Ljava/lang/String;
.end method

.method public abstract getSleepAfterRestart()Ljava/lang/String;
.end method

.method public abstract getSleepAfterTask()Ljava/lang/String;
.end method

.method public abstract getSleepOnThrobber()Ljava/lang/String;
.end method

.method public abstract parse(Ljava/lang/String;)V
.end method

.method public abstract removeTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
.end method

.method public abstract setComparationWidgets(Ljava/lang/String;)V
.end method

.method public abstract traces()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;"
        }
    .end annotation
.end method
