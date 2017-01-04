.class public interface abstract Lit/unina/androidripper/model/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nofatclips/androidtesting/model/WidgetState;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isValidItem(Landroid/view/View;)Z
.end method

.method public abstract loadItem(Landroid/view/View;Lcom/nofatclips/androidtesting/model/WidgetState;)V
.end method
