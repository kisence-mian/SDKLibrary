.class public Lcom/bun/miitmdid/c/j/b/c;
.super Landroid/database/ContentObserver;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private b:I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private c:Lcom/bun/miitmdid/c/j/b/b;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/c/j/b/b;ILjava/lang/String;)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/bun/miitmdid/c/j/b/c;->c:Lcom/bun/miitmdid/c/j/b/b;

    iput p2, p0, Lcom/bun/miitmdid/c/j/b/c;->b:I

    iput-object p3, p0, Lcom/bun/miitmdid/c/j/b/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native onChange(Z)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
