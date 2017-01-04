.class public interface abstract Lit/unina/androidripper/model/ActivityDescription;
.super Ljava/lang/Object;
.source "ActivityDescription.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getActivityName()Ljava/lang/String;
.end method

.method public abstract getActivityTitle()Ljava/lang/String;
.end method

.method public abstract getWidgetIndex(Landroid/view/View;)I
.end method

.method public abstract handlesKeyPress()Z
.end method

.method public abstract handlesLongKeyPress()Z
.end method

.method public abstract hasMenu()Z
.end method

.method public abstract hasOnOptionsItemSelected()Z
.end method

.method public abstract isTabActivity()Z
.end method

.method public abstract usesLocationManager()Z
.end method

.method public abstract usesSensorsManager()Z
.end method
