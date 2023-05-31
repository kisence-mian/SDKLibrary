.class public Lcom/bun/miitmdid/b/b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/miitmdid/b/b$b;,
        Lcom/bun/miitmdid/b/b$c;
    }
.end annotation


# static fields
.field private static h:Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private b:Lcom/bun/miitmdid/b/b$b;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bun/miitmdid/b/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/bun/miitmdid/b/b;->b:Lcom/bun/miitmdid/b/b$b;

    iput-object v0, p0, Lcom/bun/miitmdid/b/b;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bun/miitmdid/b/b;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bun/miitmdid/b/b;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bun/miitmdid/b/b;->f:Ljava/util/Map;

    const-string v0, "GET"

    iput-object v0, p0, Lcom/bun/miitmdid/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method public static native a(Landroid/content/Context;)Lcom/bun/miitmdid/b/b;
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic a(Lcom/bun/miitmdid/b/b;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private native a(Ljava/net/HttpURLConnection;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private native b()Lcom/bun/miitmdid/b/b$c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic b(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private static native b(Ljava/lang/String;)V
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private native c()Lcom/bun/miitmdid/b/b$c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic c(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic d(Lcom/bun/miitmdid/b/b;)Lcom/bun/miitmdid/b/b$b;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private native d()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native a()Lcom/bun/miitmdid/b/b;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Lcom/bun/miitmdid/b/b$b;)Lcom/bun/miitmdid/b/b;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Ljava/lang/Object;)Lcom/bun/miitmdid/b/b;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Ljava/lang/String;)Lcom/bun/miitmdid/b/b;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Ljava/lang/String;Ljava/lang/String;)Lcom/bun/miitmdid/b/b;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Ljava/util/Map;)Lcom/bun/miitmdid/b/b;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bun/miitmdid/b/b;"
        }
    .end annotation
.end method
