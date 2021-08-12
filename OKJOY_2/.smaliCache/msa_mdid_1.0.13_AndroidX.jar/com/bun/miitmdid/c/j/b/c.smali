.class public Lcom/bun/miitmdid/c/j/b/c;
.super Landroid/database/ContentObserver;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/bun/miitmdid/c/j/b/b;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/c/j/b/b;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/bun/miitmdid/c/j/b/c;->c:Lcom/bun/miitmdid/c/j/b/b;

    iput p2, p0, Lcom/bun/miitmdid/c/j/b/c;->b:I

    iput-object p3, p0, Lcom/bun/miitmdid/c/j/b/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native onChange(Z)V
.end method
