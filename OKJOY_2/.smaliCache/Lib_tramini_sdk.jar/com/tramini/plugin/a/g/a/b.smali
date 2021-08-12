.class public abstract Lcom/tramini/plugin/a/g/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field protected d:Lcom/tramini/plugin/a/g/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tramini/plugin/a/g/a/b;->a:I

    return-void
.end method

.method private b()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/tramini/plugin/a/g/a/b;->a:I

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method final a(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/tramini/plugin/a/g/a/b;->a:I

    .line 17
    return-void
.end method

.method public run()V
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/tramini/plugin/a/g/a/b;->a()V

    .line 38
    return-void
.end method
