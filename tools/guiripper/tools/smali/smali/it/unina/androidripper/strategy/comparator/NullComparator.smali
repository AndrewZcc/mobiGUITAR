.class public Lit/unina/androidripper/strategy/comparator/NullComparator;
.super Ljava/lang/Object;
.source "NullComparator.java"

# interfaces
.implements Lit/unina/androidripper/model/StatelessComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/nofatclips/androidtesting/model/ActivityState;Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public describe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "null"

    return-object v0
.end method
