.class public Lit/unina/androidripper/strategy/comparator/EditTextComparator;
.super Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;
.source "EditTextComparator.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "editText"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;-><init>([Ljava/lang/String;)V

    .line 10
    return-void
.end method
