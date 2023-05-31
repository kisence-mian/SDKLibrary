.class public abstract Lcom/tramini/plugin/a/f/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field protected d:Lcom/tramini/plugin/a/f/a/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/tramini/plugin/a/f/a/b;->a:I

    return-void
.end method

.method private b()I
    .registers 2

    .prologue
    .line 13
    iget v0, p0, Lcom/tramini/plugin/a/f/a/b;->a:I

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method final a(I)V
    .registers 2

    .prologue
    .line 9
    iput p1, p0, Lcom/tramini/plugin/a/f/a/b;->a:I

    .line 10
    return-void
.end method

.method public run()V
    .registers 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/tramini/plugin/a/f/a/b;->a()V

    .line 31
    return-void
.end method
