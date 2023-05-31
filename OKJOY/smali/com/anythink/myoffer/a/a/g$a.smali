.class final Lcom/anythink/myoffer/a/a/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/myoffer/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/anythink/myoffer/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/anythink/myoffer/a/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/myoffer/a/a/g;-><init>(B)V

    sput-object v0, Lcom/anythink/myoffer/a/a/g$a;->a:Lcom/anythink/myoffer/a/a/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/anythink/myoffer/a/a/g;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/anythink/myoffer/a/a/g$a;->a:Lcom/anythink/myoffer/a/a/g;

    return-object v0
.end method
