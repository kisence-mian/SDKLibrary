.class public Lcom/bytedance/tea/crash/a/d;
.super Ljava/lang/Object;
.source "ANRThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private final b:Lcom/bytedance/tea/crash/a/c;

.field private volatile c:Z

.field private d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/bytedance/tea/crash/a/c;)V
    .registers 10

    .prologue
    const-wide/16 v2, 0x1388

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/d;->c:Z

    .line 21
    new-instance v0, Lcom/bytedance/tea/crash/a/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/tea/crash/a/d$1;-><init>(Lcom/bytedance/tea/crash/a/d;)V

    iput-object v0, p0, Lcom/bytedance/tea/crash/a/d;->d:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcom/bytedance/tea/crash/a/d;->b:Lcom/bytedance/tea/crash/a/c;

    .line 30
    invoke-direct {p0}, Lcom/bytedance/tea/crash/a/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/tea/crash/a/d;->a:J

    .line 31
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/g;->a(J)V

    .line 32
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object v0

    const-wide/16 v4, 0x1194

    iget-object v1, p0, Lcom/bytedance/tea/crash/a/d;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v5, v1}, Lcom/bytedance/tea/crash/e/f;->a(JLjava/lang/Runnable;)V

    .line 33
    invoke-static {}, Lcom/bytedance/tea/crash/e/f;->a()Lcom/bytedance/tea/crash/e/f;

    move-result-object v1

    const/16 v5, 0x28

    move-object v4, p0

    move-wide v6, v2

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/tea/crash/e/f;->a(JLjava/lang/Runnable;IJ)V

    .line 34
    return-void
.end method

.method private a()J
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/traces.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 59
    :goto_11
    return-wide v0

    :cond_12
    const-wide/16 v0, 0x0

    goto :goto_11
.end method

.method static synthetic a(Lcom/bytedance/tea/crash/a/d;Z)Z
    .registers 2

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/bytedance/tea/crash/a/d;->c:Z

    return p1
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/traces.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/bytedance/tea/crash/a/d;->c:Z

    if-nez v0, :cond_1c

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/bytedance/tea/crash/a/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 42
    const/16 v1, 0xc8

    .line 43
    const-string v0, "/data/anr/traces.txt"

    .line 48
    :goto_f
    iget-object v2, p0, Lcom/bytedance/tea/crash/a/d;->b:Lcom/bytedance/tea/crash/a/c;

    const/16 v3, 0x19

    invoke-virtual {v2, v1, v0, v3}, Lcom/bytedance/tea/crash/a/c;->a(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/tea/crash/a/d;->c:Z

    .line 52
    :cond_1c
    return-void

    .line 45
    :cond_1d
    const/16 v1, 0x64

    goto :goto_f
.end method
