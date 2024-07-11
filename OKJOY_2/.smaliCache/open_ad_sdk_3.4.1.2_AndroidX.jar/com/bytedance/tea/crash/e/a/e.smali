.class public Lcom/bytedance/tea/crash/e/a/e;
.super Ljava/lang/Object;
.source "CrashContextAssembly.java"


# static fields
.field private static volatile a:Lcom/bytedance/tea/crash/e/a/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/tea/crash/c;",
            "Lcom/bytedance/tea/crash/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/bytedance/tea/crash/e/a/b;

.field private e:Lcom/bytedance/tea/crash/e/a/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/a/e;->c:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/e;->b:Landroid/content/Context;

    .line 35
    new-instance p1, Lcom/bytedance/tea/crash/e/a/b;

    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/e;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/tea/crash/e/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/e;->d:Lcom/bytedance/tea/crash/e/a/b;

    .line 36
    new-instance p1, Lcom/bytedance/tea/crash/e/a/d;

    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/e;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/bytedance/tea/crash/e/a/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/e;->e:Lcom/bytedance/tea/crash/e/a/d;

    .line 37
    return-void
.end method

.method private a(Lcom/bytedance/tea/crash/c;)Lcom/bytedance/tea/crash/e/a/c;
    .registers 6

    .line 60
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/e/a/c;

    .line 61
    if-eqz v0, :cond_b

    .line 62
    return-object v0

    .line 64
    :cond_b
    sget-object v1, Lcom/bytedance/tea/crash/e/a/e$1;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/c;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    goto :goto_3b

    .line 72
    :pswitch_17
    new-instance v0, Lcom/bytedance/tea/crash/e/a/f;

    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/e;->d:Lcom/bytedance/tea/crash/e/a/b;

    iget-object v3, p0, Lcom/bytedance/tea/crash/e/a/e;->e:Lcom/bytedance/tea/crash/e/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/e/a/f;-><init>(Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V

    goto :goto_3b

    .line 69
    :pswitch_23
    new-instance v0, Lcom/bytedance/tea/crash/e/a/a;

    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/e;->d:Lcom/bytedance/tea/crash/e/a/b;

    iget-object v3, p0, Lcom/bytedance/tea/crash/e/a/e;->e:Lcom/bytedance/tea/crash/e/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/e/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V

    .line 70
    goto :goto_3b

    .line 66
    :pswitch_2f
    new-instance v0, Lcom/bytedance/tea/crash/e/a/g;

    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/e;->d:Lcom/bytedance/tea/crash/e/a/b;

    iget-object v3, p0, Lcom/bytedance/tea/crash/e/a/e;->e:Lcom/bytedance/tea/crash/e/a/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/e/a/g;-><init>(Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V

    .line 67
    nop

    .line 75
    :goto_3b
    if-eqz v0, :cond_42

    .line 76
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/e;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_42
    return-object v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_23
        :pswitch_17
    .end packed-switch
.end method

.method public static a()Lcom/bytedance/tea/crash/e/a/e;
    .registers 2

    .line 40
    sget-object v0, Lcom/bytedance/tea/crash/e/a/e;->a:Lcom/bytedance/tea/crash/e/a/e;

    if-eqz v0, :cond_7

    .line 43
    sget-object v0, Lcom/bytedance/tea/crash/e/a/e;->a:Lcom/bytedance/tea/crash/e/a/e;

    return-object v0

    .line 41
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CrashContextAssembly not init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 47
    sget-object v0, Lcom/bytedance/tea/crash/e/a/e;->a:Lcom/bytedance/tea/crash/e/a/e;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Lcom/bytedance/tea/crash/e/a/e;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/e/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/tea/crash/e/a/e;->a:Lcom/bytedance/tea/crash/e/a/e;

    .line 50
    :cond_b
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/c;Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;
    .registers 3

    .line 89
    if-nez p1, :cond_3

    .line 90
    return-object p2

    .line 92
    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/e/a/e;->a(Lcom/bytedance/tea/crash/c;)Lcom/bytedance/tea/crash/e/a/c;

    move-result-object p1

    .line 93
    if-eqz p1, :cond_e

    .line 94
    invoke-virtual {p1, p2}, Lcom/bytedance/tea/crash/e/a/c;->a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;

    move-result-object p1

    return-object p1

    .line 96
    :cond_e
    return-object p2
.end method
