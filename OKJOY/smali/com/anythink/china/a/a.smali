.class public final Lcom/anythink/china/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "OaidAidlUtil"

.field private static final b:Ljava/lang/String; = "com.huawei.hwid"

.field private static final c:Ljava/lang/String; = "com.uodis.opendevice.OPENIDS_SERVICE"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/content/ServiceConnection;

.field private f:Lcom/anythink/china/a/c;

.field private g:Lcom/anythink/china/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/c;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/anythink/china/a/a;->f:Lcom/anythink/china/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/anythink/china/a/a;Lcom/anythink/china/a/c;)Lcom/anythink/china/a/c;
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/anythink/china/a/a;->f:Lcom/anythink/china/a/c;

    return-object p1
.end method

.method private a()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 27
    const-string v1, "OaidAidlUtil"

    const-string v2, "bindService"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    if-nez v1, :cond_14

    .line 29
    const-string v1, "OaidAidlUtil"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_13
    return v0

    .line 32
    :cond_14
    new-instance v1, Lcom/anythink/china/a/a$a;

    invoke-direct {v1, p0, v0}, Lcom/anythink/china/a/a$a;-><init>(Lcom/anythink/china/a/a;B)V

    iput-object v1, p0, Lcom/anythink/china/a/a;->e:Landroid/content/ServiceConnection;

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/a/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 36
    const-string v1, "OaidAidlUtil"

    const-string v2, "bindService result: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method static synthetic b(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/b;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/anythink/china/a/a;->g:Lcom/anythink/china/a/b;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 41
    const-string v0, "OaidAidlUtil"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 43
    const-string v0, "OaidAidlUtil"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_13
    :goto_13
    return-void

    .line 46
    :cond_14
    iget-object v0, p0, Lcom/anythink/china/a/a;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_13

    .line 47
    iget-object v0, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/a/a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 48
    iput-object v2, p0, Lcom/anythink/china/a/a;->f:Lcom/anythink/china/a/c;

    .line 49
    iput-object v2, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    .line 50
    iput-object v2, p0, Lcom/anythink/china/a/a;->g:Lcom/anythink/china/a/b;

    goto :goto_13
.end method

.method static synthetic c(Lcom/anythink/china/a/a;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1041
    const-string v0, "OaidAidlUtil"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 1043
    const-string v0, "OaidAidlUtil"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_13
    :goto_13
    return-void

    .line 1046
    :cond_14
    iget-object v0, p0, Lcom/anythink/china/a/a;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_13

    .line 1047
    iget-object v0, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/china/a/a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1048
    iput-object v2, p0, Lcom/anythink/china/a/a;->f:Lcom/anythink/china/a/c;

    .line 1049
    iput-object v2, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    .line 1050
    iput-object v2, p0, Lcom/anythink/china/a/a;->g:Lcom/anythink/china/a/b;

    goto :goto_13
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/b;)V
    .registers 6

    .prologue
    .line 59
    iput-object p1, p0, Lcom/anythink/china/a/a;->g:Lcom/anythink/china/a/b;

    .line 1027
    const-string v0, "OaidAidlUtil"

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 1029
    const-string v0, "OaidAidlUtil"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :goto_14
    return-void

    .line 1032
    :cond_15
    new-instance v0, Lcom/anythink/china/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anythink/china/a/a$a;-><init>(Lcom/anythink/china/a/a;B)V

    iput-object v0, p0, Lcom/anythink/china/a/a;->e:Landroid/content/ServiceConnection;

    .line 1033
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    const-string v1, "com.huawei.hwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    iget-object v1, p0, Lcom/anythink/china/a/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/a/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1036
    const-string v1, "OaidAidlUtil"

    const-string v2, "bindService result: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method
