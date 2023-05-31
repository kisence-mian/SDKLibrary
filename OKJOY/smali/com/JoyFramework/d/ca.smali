.class public final Lcom/JoyFramework/d/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/d/ca$a;
    }
.end annotation


# static fields
.field private static a:Lcom/JoyFramework/d/ca;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/JoyFramework/d/ca;
    .registers 5

    .prologue
    .line 44
    sget-object v0, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    if-nez v0, :cond_59

    .line 45
    new-instance v0, Lcom/JoyFramework/d/ca;

    invoke-direct {v0}, Lcom/JoyFramework/d/ca;-><init>()V

    sput-object v0, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    .line 46
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 49
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 48
    invoke-static {v1, v2}, Lcom/JoyFramework/d/ba;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    .line 50
    if-eqz v1, :cond_59

    .line 52
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v1

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-static {v1}, Lcom/JoyFramework/d/ba;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 53
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->b:Ljava/lang/String;

    .line 54
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->c:Ljava/lang/String;

    .line 58
    :try_start_3a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_5c

    .line 59
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->b:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->c:Ljava/lang/String;

    .line 61
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->d:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_59} :catch_7b

    .line 76
    :cond_59
    :goto_59
    sget-object v0, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    return-object v0

    .line 63
    :cond_5c
    :try_start_5c
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->b:Ljava/lang/String;

    .line 64
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    const-string v2, "getDeviceId"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/JoyFramework/d/ca;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->c:Ljava/lang/String;

    .line 65
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    const-string v2, "getDeviceId"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/JoyFramework/d/ca;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->d:Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_7a} :catch_7b

    goto :goto_59

    .line 68
    :catch_7b
    move-exception v1

    .line 69
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/JoyFramework/d/ca;->b:Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/JoyFramework/d/ca;->a:Lcom/JoyFramework/d/ca;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/JoyFramework/d/ca;->c:Ljava/lang/String;

    goto :goto_59
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 87
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 89
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 90
    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    .line 91
    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 93
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 94
    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 95
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_3d

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_36

    move-result-object v0

    .line 105
    :goto_35
    return-object v0

    .line 101
    :catch_36
    move-exception v0

    .line 102
    new-instance v0, Lcom/JoyFramework/d/ca$a;

    invoke-direct {v0, p1}, Lcom/JoyFramework/d/ca$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    move-object v0, v1

    goto :goto_35
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/JoyFramework/d/ca;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/JoyFramework/d/ca;->c:Ljava/lang/String;

    return-object v0
.end method
