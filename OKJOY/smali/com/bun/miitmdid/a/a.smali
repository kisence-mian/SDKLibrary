.class public Lcom/bun/miitmdid/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/miitmdid/a/b;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bun/miitmdid/a/a$a;
    }
.end annotation


# instance fields
.field public a:Lcom/bun/miitmdid/a/a$a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bun/miitmdid/a/a$a;

    invoke-direct {v0, p0}, Lcom/bun/miitmdid/a/a$a;-><init>(Lcom/bun/miitmdid/a/a;)V

    iput-object v0, p0, Lcom/bun/miitmdid/a/a;->a:Lcom/bun/miitmdid/a/a$a;

    return-void
.end method

.method public static native a(Landroid/content/Context;)Lcom/bun/miitmdid/a/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private static native a(Lcom/bun/miitmdid/a/a;Lorg/json/JSONObject;)Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private static native b(Lcom/bun/miitmdid/a/a;Lorg/json/JSONObject;)Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method private static native c(Lcom/bun/miitmdid/a/a;Lorg/json/JSONObject;)Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method


# virtual methods
.method public native a()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
