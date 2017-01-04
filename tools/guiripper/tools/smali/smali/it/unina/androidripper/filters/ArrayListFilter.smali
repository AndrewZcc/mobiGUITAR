.class public abstract Lit/unina/androidripper/filters/ArrayListFilter;
.super Ljava/lang/Object;
.source "ArrayListFilter.java"

# interfaces
.implements Lit/unina/androidripper/model/Filter;


# instance fields
.field private filteredItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/filters/ArrayListFilter;->filteredItems:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lit/unina/androidripper/filters/ArrayListFilter;->filteredItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lit/unina/androidripper/filters/ArrayListFilter;->filteredItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public loadItem(Landroid/view/View;Lcom/nofatclips/androidtesting/model/WidgetState;)V
    .locals 1
    .parameter "v"
    .parameter "w"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lit/unina/androidripper/filters/ArrayListFilter;->isValidItem(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lit/unina/androidripper/filters/ArrayListFilter;->filteredItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    return-void
.end method
