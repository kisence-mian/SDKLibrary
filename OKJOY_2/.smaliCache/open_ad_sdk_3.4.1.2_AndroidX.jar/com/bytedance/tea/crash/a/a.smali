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
    .registers 4

    .line 23
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 16
    const/16 p3, 0x1388

    iput p3, p0, Lcom/bytedance/tea/crash/a/a;->b:I

    .line 20
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/bytedance/tea/crash/a/a;->c:Z

    .line 25
    if-eqz p1, :cond_15

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_15

    .line 28
    iput-object p1, p0, Lcom/bytedance/tea/crash/a/a;->a:Lcom/bytedance/tea/crash/a/c;

    .line 29
    return-void

    .line 26
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "params is not right path is null or ANRManager is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/a/a;Z)Z
    .registers 2

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/tea/crash/a/a;->c:Z

    return p1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 6

    .line 33
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/a/a;->c:Z

    if-eqz v0, :cond_46

    const/16 v0, 0x8

    if-ne p1, v0, :cond_46

    .line 35
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_46

    const-string p1, "trace"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/bytedance/tea/crash/a/a;->a:Lcom/bytedance/tea/crash/a/c;

    if-eqz p1, :cond_46

    .line 37
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/tea/crash/a/a;->c:Z

    .line 39
    iget-object p1, p0, Lcom/bytedance/tea/crash/a/a;->a:Lcom/bytedance/tea/crash/a/c;

    const/16 v0, 0xc8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/anr/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x50

    invoke-virtual {p1, v0, p2, v1}, Lcom/bytedance/tea/crash/a/c;->a(ILjava/lang/String;I)Z

    .line 41
    new-instance p1, Lcom/bytedance/tea/crash/a/a$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x1388

    invoke-direct {p1, p0, p2}, Lcom/bytedance/tea/crash/a/a$a;-><init>(Lcom/bytedance/tea/crash/a/a;I)V

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/a/a$a;->start()V

    .line 43
    :cond_46
    return-void
.end method
