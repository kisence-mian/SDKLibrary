.class final Lcom/anythink/china/a/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/a/a/d;


# direct methods
.method private constructor <init>(Lcom/anythink/china/a/a/d;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/china/a/a/d;B)V
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Lcom/anythink/china/a/a/d$a;-><init>(Lcom/anythink/china/a/a/d;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 78
    const-string p1, "OaidAidlUtil"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p2}, Lcom/anythink/china/a/a/c$a;->a(Landroid/os/IBinder;)Lcom/anythink/china/a/a/c;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/anythink/china/a/a/d;->a(Lcom/anythink/china/a/a/d;Lcom/anythink/china/a/a/c;)Lcom/anythink/china/a/a/c;

    .line 80
    iget-object p2, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p2}, Lcom/anythink/china/a/a/d;->a(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a/c;

    move-result-object p2

    if-eqz p2, :cond_81

    .line 82
    :try_start_18
    iget-object p2, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p2}, Lcom/anythink/china/a/a/d;->b(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a;

    move-result-object p2

    if-eqz p2, :cond_3d

    .line 83
    iget-object p2, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p2}, Lcom/anythink/china/a/a/d;->b(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {v0}, Lcom/anythink/china/a/a/d;->a(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/china/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {v1}, Lcom/anythink/china/a/a/d;->a(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/anythink/china/a/a/c;->b()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3d} :catch_60
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3d} :catch_45
    .catchall {:try_start_18 .. :try_end_3d} :catchall_43

    .line 96
    :cond_3d
    :goto_3d
    iget-object p1, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p1}, Lcom/anythink/china/a/a/d;->c(Lcom/anythink/china/a/a/d;)V

    .line 97
    return-void

    .line 96
    :catchall_43
    move-exception p1

    goto :goto_7b

    .line 90
    :catch_45
    move-exception p2

    .line 91
    :try_start_46
    const-string v0, "getChannelInfo Excepition"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p1}, Lcom/anythink/china/a/a/d;->b(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 93
    iget-object p1, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p1}, Lcom/anythink/china/a/a/d;->b(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    goto :goto_3d

    .line 85
    :catch_60
    move-exception p2

    .line 86
    const-string v0, "getChannelInfo RemoteException"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p1}, Lcom/anythink/china/a/a/d;->b(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 88
    iget-object p1, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p1}, Lcom/anythink/china/a/a/d;->b(Lcom/anythink/china/a/a/d;)Lcom/anythink/china/a/a;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V
    :try_end_7a
    .catchall {:try_start_46 .. :try_end_7a} :catchall_43

    goto :goto_3d

    .line 96
    :goto_7b
    iget-object p2, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    invoke-static {p2}, Lcom/anythink/china/a/a/d;->c(Lcom/anythink/china/a/a/d;)V

    .line 97
    throw p1

    .line 99
    :cond_81
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 103
    const-string p1, "OaidAidlUtil"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/anythink/china/a/a/d$a;->a:Lcom/anythink/china/a/a/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/china/a/a/d;->a(Lcom/anythink/china/a/a/d;Lcom/anythink/china/a/a/c;)Lcom/anythink/china/a/a/c;

    .line 105
    return-void
.end method
