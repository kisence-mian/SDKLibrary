.class final Lcom/anythink/china/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/china/a/a;


# direct methods
.method private constructor <init>(Lcom/anythink/china/a/a;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/anythink/china/a/a;B)V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/anythink/china/a/a$a;-><init>(Lcom/anythink/china/a/a;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 70
    const-string v0, "OaidAidlUtil"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {p2}, Lcom/anythink/china/a/c$a;->a(Landroid/os/IBinder;)Lcom/anythink/china/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/china/a/a;->a(Lcom/anythink/china/a/a;Lcom/anythink/china/a/c;)Lcom/anythink/china/a/c;

    .line 72
    iget-object v0, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v0}, Lcom/anythink/china/a/a;->a(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/c;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 74
    :try_start_18
    iget-object v0, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v0}, Lcom/anythink/china/a/a;->b(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/b;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 75
    iget-object v0, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v0}, Lcom/anythink/china/a/a;->b(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v1}, Lcom/anythink/china/a/a;->a(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/anythink/china/a/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v2}, Lcom/anythink/china/a/a;->a(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/anythink/china/a/c;->b()Z

    invoke-interface {v0, v1}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_3c} :catch_42
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_5b
    .catchall {:try_start_18 .. :try_end_3c} :catchall_74

    .line 88
    :cond_3c
    iget-object v0, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v0}, Lcom/anythink/china/a/a;->c(Lcom/anythink/china/a/a;)V

    .line 91
    :cond_41
    :goto_41
    return-void

    .line 77
    :catch_42
    move-exception v0

    .line 78
    :try_start_43
    const-string v1, "OaidAidlUtil"

    const-string v2, "getChannelInfo RemoteException"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v1}, Lcom/anythink/china/a/a;->b(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/b;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_43 .. :try_end_55} :catchall_74

    .line 88
    :cond_55
    iget-object v0, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v0}, Lcom/anythink/china/a/a;->c(Lcom/anythink/china/a/a;)V

    goto :goto_41

    .line 82
    :catch_5b
    move-exception v0

    .line 83
    :try_start_5c
    const-string v1, "OaidAidlUtil"

    const-string v2, "getChannelInfo Excepition"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v1}, Lcom/anythink/china/a/a;->b(Lcom/anythink/china/a/a;)Lcom/anythink/china/a/b;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_5c .. :try_end_6e} :catchall_74

    .line 88
    :cond_6e
    iget-object v0, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v0}, Lcom/anythink/china/a/a;->c(Lcom/anythink/china/a/a;)V

    goto :goto_41

    :catchall_74
    move-exception v0

    iget-object v1, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    invoke-static {v1}, Lcom/anythink/china/a/a;->c(Lcom/anythink/china/a/a;)V

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 95
    const-string v0, "OaidAidlUtil"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/anythink/china/a/a$a;->a:Lcom/anythink/china/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/china/a/a;->a(Lcom/anythink/china/a/a;Lcom/anythink/china/a/c;)Lcom/anythink/china/a/c;

    .line 97
    return-void
.end method
