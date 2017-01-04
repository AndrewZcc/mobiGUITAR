.class public interface abstract Lcom/nofatclips/androidtesting/model/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/WrapperInterface;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nofatclips/androidtesting/model/WrapperInterface;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nofatclips/androidtesting/model/WidgetState;",
        ">;"
    }
.end annotation


# static fields
.field public static final CRASH:Ljava/lang/String; = "crash"

.field public static final EXIT:Ljava/lang/String; = "exit"

.field public static final FAILURE:Ljava/lang/String; = "fail"


# virtual methods
.method public abstract addSupportedEvent(Lcom/nofatclips/androidtesting/model/SupportedEvent;)V
.end method

.method public abstract addWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)V
.end method

.method public abstract getDescriptionId()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getScreenshot()Ljava/lang/String;
.end method

.method public abstract getSupportedEvents()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nofatclips/androidtesting/model/SupportedEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedEventsByWidgetUniqueId(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nofatclips/androidtesting/model/SupportedEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUniqueId()Ljava/lang/String;
.end method

.method public abstract hasWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
.end method

.method public abstract isCrash()Z
.end method

.method public abstract isExit()Z
.end method

.method public abstract isFailure()Z
.end method

.method public abstract markAsCrash()V
.end method

.method public abstract markAsExit()V
.end method

.method public abstract markAsFailure()V
.end method

.method public abstract resetSupportedEvents()V
.end method

.method public abstract setDescriptionId(Ljava/lang/String;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setScreenshot(Ljava/lang/String;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract setUniqueId(Ljava/lang/String;)V
.end method

.method public abstract supportsEvent(Ljava/lang/String;Ljava/lang/String;)Z
.end method
