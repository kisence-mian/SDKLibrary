.class public Lcom/ss/android/downloadlib/h/c;
.super Ljava/lang/Object;
.source "Chain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/h/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/downloadlib/h/c$a<",
            "TP;TR;>;>;"
        }
    .end annotation
.end field

.field private e:Lcom/ss/android/downloadlib/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/downloadlib/h/c<",
            "*TP;>;"
        }
    .end annotation
.end field

.field private f:Lcom/ss/android/downloadlib/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/downloadlib/h/c<",
            "TR;*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILcom/ss/android/downloadlib/h/c$a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ss/android/downloadlib/h/c$a<",
            "TP;TR;>;TP;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/ss/android/downloadlib/h/c;->c:I

    .line 28
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ss/android/downloadlib/h/c;->d:Ljava/lang/ref/SoftReference;

    .line 29
    iput-object p3, p0, Lcom/ss/android/downloadlib/h/c;->a:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static a(Lcom/ss/android/downloadlib/h/c$a;Ljava/lang/Object;)Lcom/ss/android/downloadlib/h/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ss/android/downloadlib/h/c$a<",
            "TP;TR;>;TP;)",
            "Lcom/ss/android/downloadlib/h/c<",
            "TP;TR;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/ss/android/downloadlib/h/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/ss/android/downloadlib/h/c;-><init>(ILcom/ss/android/downloadlib/h/c$a;Ljava/lang/Object;)V

    return-object v0
.end method

.method private b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/ss/android/downloadlib/h/c;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/ss/android/downloadlib/h/c$a;)Lcom/ss/android/downloadlib/h/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NR:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/ss/android/downloadlib/h/c$a<",
            "TR;TNR;>;)",
            "Lcom/ss/android/downloadlib/h/c<",
            "TR;TNR;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/ss/android/downloadlib/h/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/ss/android/downloadlib/h/c;-><init>(ILcom/ss/android/downloadlib/h/c$a;Ljava/lang/Object;)V

    .line 50
    iput-object v0, p0, Lcom/ss/android/downloadlib/h/c;->f:Lcom/ss/android/downloadlib/h/c;

    .line 51
    iput-object p0, v0, Lcom/ss/android/downloadlib/h/c;->e:Lcom/ss/android/downloadlib/h/c;

    .line 52
    return-object v0
.end method

.method public a(Lcom/ss/android/downloadlib/h/c$a;)Lcom/ss/android/downloadlib/h/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NR:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ss/android/downloadlib/h/c$a<",
            "TR;TNR;>;)",
            "Lcom/ss/android/downloadlib/h/c<",
            "TR;TNR;>;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/downloadlib/h/c;->a(ILcom/ss/android/downloadlib/h/c$a;)Lcom/ss/android/downloadlib/h/c;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/ss/android/downloadlib/h/c;->e:Lcom/ss/android/downloadlib/h/c;

    if-eqz v0, :cond_8

    .line 69
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/h/c;->a()V

    goto :goto_b

    .line 71
    :cond_8
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/h/c;->run()V

    .line 73
    :goto_b
    return-void
.end method

.method public run()V
    .registers 3

    .line 77
    iget v0, p0, Lcom/ss/android/downloadlib/h/c;->c:I

    if-nez v0, :cond_16

    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 78
    invoke-static {}, Lcom/ss/android/downloadlib/f;->a()Lcom/ss/android/downloadlib/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/f;->b()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void

    .line 81
    :cond_16
    iget v0, p0, Lcom/ss/android/downloadlib/h/c;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 82
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;)V

    .line 83
    return-void

    .line 85
    :cond_29
    iget v0, p0, Lcom/ss/android/downloadlib/h/c;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    invoke-static {}, Lcom/ss/android/downloadlib/h/k;->a()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 86
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/downloadlib/d;->b(Ljava/lang/Runnable;)V

    .line 87
    return-void

    .line 89
    :cond_3c
    iget-object v0, p0, Lcom/ss/android/downloadlib/h/c;->a:Ljava/lang/Object;

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/ss/android/downloadlib/h/c;->e:Lcom/ss/android/downloadlib/h/c;

    if-eqz v0, :cond_4a

    .line 90
    invoke-direct {v0}, Lcom/ss/android/downloadlib/h/c;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/h/c;->a:Ljava/lang/Object;

    .line 92
    :cond_4a
    iget-object v0, p0, Lcom/ss/android/downloadlib/h/c;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/h/c$a;

    .line 93
    if-nez v0, :cond_55

    .line 94
    return-void

    .line 96
    :cond_55
    iget-object v1, p0, Lcom/ss/android/downloadlib/h/c;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/ss/android/downloadlib/h/c$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/h/c;->b:Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/ss/android/downloadlib/h/c;->f:Lcom/ss/android/downloadlib/h/c;

    if-eqz v0, :cond_64

    .line 98
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/h/c;->run()V

    .line 100
    :cond_64
    return-void
.end method
