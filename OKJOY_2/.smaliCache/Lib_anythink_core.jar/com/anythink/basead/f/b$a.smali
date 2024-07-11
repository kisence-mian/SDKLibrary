.class final Lcom/anythink/basead/f/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/anythink/basead/f/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/anythink/basead/f/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/basead/f/b;-><init>(B)V

    sput-object v0, Lcom/anythink/basead/f/b$a;->a:Lcom/anythink/basead/f/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/anythink/basead/f/b;
    .registers 1

    .line 28
    sget-object v0, Lcom/anythink/basead/f/b$a;->a:Lcom/anythink/basead/f/b;

    return-object v0
.end method
