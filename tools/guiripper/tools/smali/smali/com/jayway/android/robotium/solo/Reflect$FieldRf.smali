.class public Lcom/jayway/android/robotium/solo/Reflect$FieldRf;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/android/robotium/solo/Reflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FieldRf"
.end annotation


# instance fields
.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field final synthetic this$0:Lcom/jayway/android/robotium/solo/Reflect;


# direct methods
.method public constructor <init>(Lcom/jayway/android/robotium/solo/Reflect;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "object"
    .parameter "name"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->this$0:Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->object:Ljava/lang/Object;

    .line 56
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private getField()Ljava/lang/reflect/Field;
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->clazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->clazz:Ljava/lang/Class;

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 110
    .local v0, field:Ljava/lang/reflect/Field;
    :try_start_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .parameter "field"

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    .line 122
    .local v1, obj:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->object:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public in(Ljava/lang/Object;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 82
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public out(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, outclazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 69
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public type(Ljava/lang/Class;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/jayway/android/robotium/solo/Reflect$FieldRf;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->clazz:Ljava/lang/Class;

    .line 100
    return-object p0
.end method
