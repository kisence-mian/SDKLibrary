.class public Lcom/umeng/commonsdk/statistics/idtracking/l;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "UTDIdTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "utdid"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 26
    const-string v0, "utdid"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/l;->b:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 8

    .line 33
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "header_tracking_utdid"

    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 34
    const-string v1, "com.ut.device.UTDevice"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 35
    const-string v2, "getUtdid"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 36
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/l;->b:Landroid/content/Context;

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2b

    return-object v1

    .line 38
    :cond_2a
    return-object v0

    .line 40
    :catch_2b
    move-exception v1

    .line 47
    return-object v0
.end method
