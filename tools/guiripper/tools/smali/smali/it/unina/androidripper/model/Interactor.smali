.class public interface abstract Lit/unina/androidripper/model/Interactor;
.super Ljava/lang/Object;
.source "Interactor.java"


# virtual methods
.method public abstract canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
.end method

.method public abstract cannotIdentifyWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
.end method

.method public abstract getAbstractor()Lit/unina/androidripper/model/Abstractor;
.end method

.method public abstract getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInteractionType()Ljava/lang/String;
.end method

.method public abstract isForcedWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
.end method

.method public abstract isVetoedWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
.end method

.method public abstract setAbstractor(Lit/unina/androidripper/model/Abstractor;)V
.end method
