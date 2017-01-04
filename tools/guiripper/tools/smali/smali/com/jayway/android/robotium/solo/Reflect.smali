.class Lcom/jayway/android/robotium/solo/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/android/robotium/solo/Reflect$FieldRf;
    }
.end annotation


# instance fields
.field private object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Reflect;->object:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;
    .locals 2
    .parameter "name"

    .prologue
    .line 36
    new-instance v0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Reflect;->object:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;-><init>(Lcom/jayway/android/robotium/solo/Reflect;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
