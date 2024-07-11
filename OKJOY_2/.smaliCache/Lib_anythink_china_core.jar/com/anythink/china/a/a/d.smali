.class public final Lcom/anythink/china/a/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/a/a/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "OaidAidlUtil"

.field private static final b:Ljava/lang/String; = "com.huawei.hwid"

.field private static final c:Ljava/lang/String; = "com.uodis.opendevice.OPENIDS_SERVICE"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/content/ServiceConnection;

.field private f:Lcom/anythink/china/a/a/c;

.field private g:Lcom/anythink/china/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a/c;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/china/a/a/d;->f:Lcom/anythink/china/a/a/c;

    return-object p0
.end method

.method static synthetic a(Lcom/anythink/china/a/a/d;Lcom/anythink/china/a/a/c;)Lcom/anythink/china/a/a/c;
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/anythink/china/a/a/d;->f:Lcom/anythink/china/a/a/c;

    return-object p1
.end method

.method private a()Z
    .registers 6

    .line 35
    const-string v0, "OaidAidlUtil"

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 37
    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return v2

    .line 40
    :cond_12
    new-instance v1, Lcom/anythink/china/a/a/d$a;

    invoke-direct {v1, p0, v2}, Lcom/anythink/china/a/a/d$a;-><init>(Lcom/anythink/china/a/a/d;B)V

    iput-object v1, p0, Lcom/anythink/china/a/a/d;->e:Landroid/content/ServiceConnection;

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v2, "com.huawei.hwid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v2, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/china/a/a/d;->e:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bindService result: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v1
.end method

.method static synthetic b(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/anythink/china/a/a/d;->g:Lcom/anythink/china/a/a;

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 49
    const-string v0, "OaidAidlUtil"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    if-nez v1, :cond_11

    .line 51
    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void

    .line 54
    :cond_11
    iget-object v0, p0, Lcom/anythink/china/a/a/d;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1f

    .line 55
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/a/a/d;->f:Lcom/anythink/china/a/a/c;

    .line 57
    iput-object v0, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    .line 58
    iput-object v0, p0, Lcom/anythink/china/a/a/d;->g:Lcom/anythink/china/a/a;

    .line 60
    :cond_1f
    return-void
.end method

.method static synthetic c(Lcom/anythink/china/a/a/d;)V
    .registers 3

    .line 1049
    const-string v0, "OaidAidlUtil"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    if-nez v1, :cond_11

    .line 1051
    const-string p0, "context is null"

    invoke-static {v0, p0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    return-void

    .line 1054
    :cond_11
    iget-object v0, p0, Lcom/anythink/china/a/a/d;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1f

    .line 1055
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/a/a/d;->f:Lcom/anythink/china/a/a/c;

    .line 1057
    iput-object v0, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    .line 1058
    iput-object v0, p0, Lcom/anythink/china/a/a/d;->g:Lcom/anythink/china/a/a;

    .line 21
    :cond_1f
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)V
    .registers 6

    .line 67
    iput-object p1, p0, Lcom/anythink/china/a/a/d;->g:Lcom/anythink/china/a/a;

    .line 68
    nop

    .line 1035
    const-string p1, "OaidAidlUtil"

    const-string v0, "bindService"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 1037
    const-string v0, "context is null"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    return-void

    .line 1040
    :cond_14
    new-instance v0, Lcom/anythink/china/a/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anythink/china/a/a/d$a;-><init>(Lcom/anythink/china/a/a/d;B)V

    iput-object v0, p0, Lcom/anythink/china/a/a/d;->e:Landroid/content/ServiceConnection;

    .line 1041
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    iget-object v1, p0, Lcom/anythink/china/a/a/d;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/a/a/d;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1044
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bindService result: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
