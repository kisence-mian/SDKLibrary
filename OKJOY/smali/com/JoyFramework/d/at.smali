.class public Lcom/JoyFramework/d/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bun/supplier/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/d/at$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "MiitHelper"


# instance fields
.field private b:Lcom/JoyFramework/d/at$a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/d/at$a;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    .line 26
    return-void
.end method

.method private b(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0, p0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/supplier/IIdentifierListener;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result v0

    .line 72
    :goto_5
    return v0

    .line 70
    :catch_6
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/16 v0, -0x4ee9

    goto :goto_5
.end method

.method private c(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Lcom/bun/miitmdid/core/MdidSdk;

    invoke-direct {v0}, Lcom/bun/miitmdid/core/MdidSdk;-><init>()V

    .line 85
    invoke-virtual {v0, p1, p0}, Lcom/bun/miitmdid/core/MdidSdk;->InitSdk(Landroid/content/Context;Lcom/bun/supplier/IIdentifierListener;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result v0

    .line 88
    :goto_9
    return v0

    .line 86
    :catch_a
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    const/16 v0, -0x4eea

    goto :goto_9
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/supplier/IdSupplier;)V
    .registers 8

    .prologue
    .line 94
    if-nez p2, :cond_3

    .line 121
    :cond_2
    :goto_2
    return-void

    .line 97
    :cond_3
    :try_start_3
    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getVAID()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getAAID()Ljava/lang/String;

    move-result-object v3

    .line 100
    iget-object v0, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    if-eqz v0, :cond_2

    .line 101
    iget-object v4, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    if-eqz p1, :cond_49

    const-string v0, "true"

    :goto_19
    invoke-interface {v4, v0}, Lcom/JoyFramework/d/at$a;->a(Ljava/lang/String;)V

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 103
    iget-object v0, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/JoyFramework/d/at$a;->b(Ljava/lang/String;)V

    .line 107
    :goto_29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 108
    iget-object v0, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/JoyFramework/d/at$a;->c(Ljava/lang/String;)V

    .line 112
    :goto_36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 113
    iget-object v0, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/JoyFramework/d/at$a;->d(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_44

    goto :goto_2

    .line 118
    :catch_44
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 101
    :cond_49
    :try_start_49
    const-string v0, "false"

    goto :goto_19

    .line 105
    :cond_4c
    iget-object v0, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    invoke-interface {v0, v1}, Lcom/JoyFramework/d/at$a;->b(Ljava/lang/String;)V

    goto :goto_29

    .line 110
    :cond_52
    iget-object v0, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    invoke-interface {v0, v2}, Lcom/JoyFramework/d/at$a;->c(Ljava/lang/String;)V

    goto :goto_36

    .line 115
    :cond_58
    iget-object v0, p0, Lcom/JoyFramework/d/at;->b:Lcom/JoyFramework/d/at$a;

    invoke-interface {v0, v3}, Lcom/JoyFramework/d/at$a;->d(Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5d} :catch_44

    goto :goto_2
.end method

.method public a(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_51

    .line 35
    invoke-direct {p0, p1}, Lcom/JoyFramework/d/at;->b(Landroid/content/Context;)I

    move-result v0

    .line 39
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 40
    sub-long v2, v4, v2

    .line 41
    const v1, 0xf63e4

    if-ne v0, v1, :cond_56

    .line 54
    :cond_19
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/JoyFramework/d/at;->c:Ljava/lang/String;

    .line 55
    const-string v1, "MiitHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init return code [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/d/at;->c:Ljava/lang/String;

    sput-object v0, Lcom/JoyFramework/a/a;->Z:Ljava/lang/String;

    .line 61
    :goto_50
    return-void

    .line 37
    :cond_51
    invoke-direct {p0, p1}, Lcom/JoyFramework/d/at;->c(Landroid/content/Context;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_6b

    move-result v0

    goto :goto_e

    .line 43
    :cond_56
    const v1, 0xf63e5

    if-eq v0, v1, :cond_19

    .line 45
    const v1, 0xf63e3

    if-eq v0, v1, :cond_19

    .line 47
    const v1, 0xf63e6

    if-eq v0, v1, :cond_19

    .line 51
    const v1, 0xf63e7

    if-ne v0, v1, :cond_19

    goto :goto_19

    .line 57
    :catch_6b
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method
