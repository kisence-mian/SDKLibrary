.class final Lcom/tapjoy/internal/gd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/tapjoy/internal/gd;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/gd;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/tapjoy/internal/gd$a;->d:Lcom/tapjoy/internal/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    nop

    .line 1032
    nop

    .line 1256
    nop

    .line 1257
    if-eqz p2, :cond_16

    .line 1258
    nop

    .line 2047
    instance-of p1, p2, Landroid/app/Application;

    if-eqz p1, :cond_11

    .line 2048
    move-object p1, p2

    goto :goto_15

    .line 2050
    :cond_11
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1258
    :goto_15
    goto :goto_17

    .line 1257
    :cond_16
    const/4 p1, 0x0

    .line 1261
    :goto_17
    if-eqz p1, :cond_1a

    move-object p2, p1

    .line 249
    :cond_1a
    iput-object p2, p0, Lcom/tapjoy/internal/gd$a;->a:Landroid/content/Context;

    .line 250
    iput-object p3, p0, Lcom/tapjoy/internal/gd$a;->b:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Lcom/tapjoy/internal/gd$a;->c:Ljava/util/Hashtable;

    .line 252
    return-void
.end method
