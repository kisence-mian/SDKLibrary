.class public final Lcom/anythink/core/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/g$a;,
        Lcom/anythink/core/b/g$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.anythink.hb.ATHeadBiddingHandler"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/core/b/g$b;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 16
    :try_start_1
    const-string v0, "com.anythink.hb.ATHeadBiddingHandler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/anythink/core/b/g$b;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 18
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 19
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 20
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/g$b;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1f} :catch_20

    .line 24
    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    move-object v0, v1

    goto :goto_1f
.end method
