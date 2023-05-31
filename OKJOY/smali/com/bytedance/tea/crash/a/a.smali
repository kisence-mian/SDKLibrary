.class public Lcom/bytedance/tea/crash/a/a;
.super Landroid/os/FileObserver;
.source "ANRFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/crash/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/tea/crash/a/c;

.field private final b:I

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/tea/crash/a/c;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 23
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 16
    const/16 v0, 0x1388

    iput v0, p0, Lcom/bytedance/tea/crash/a/a;->b:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/a;->c:Z

    .line 25
    if-eqz p1, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 26
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params is not right path is null or ANRManager is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1a
    iput-object p1, p0, Lcom/bytedance/tea/crash/a/a;->a:Lcom/bytedance/tea/crash/a/c;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/a/a;Z)Z
    .registers 2

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/bytedance/tea/crash/a/a;->c:Z

    return p1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/a/a;->c:Z

    if-eqz v0, :cond_46

    const/16 v0, 0x8

    if-ne p1, v0, :cond_46

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "trace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/bytedance/tea/crash/a/a;->a:Lcom/bytedance/tea/crash/a/c;

    if-eqz v0, :cond_46

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/a;->c:Z

    .line 39
    iget-object v0, p0, Lcom/bytedance/tea/crash/a/a;->a:Lcom/bytedance/tea/crash/a/c;

    const/16 v1, 0xc8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/anr/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/tea/crash/a/c;->a(ILjava/lang/String;I)Z

    .line 41
    new-instance v0, Lcom/bytedance/tea/crash/a/a$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x1388

    invoke-direct {v0, p0, v1}, Lcom/bytedance/tea/crash/a/a$a;-><init>(Lcom/bytedance/tea/crash/a/a;I)V

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/a/a$a;->start()V

    .line 43
    :cond_46
    return-void
.end method
