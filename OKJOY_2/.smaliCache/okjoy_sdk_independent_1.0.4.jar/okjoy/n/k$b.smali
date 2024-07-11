.class public Lokjoy/n/k$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokjoy/n/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lokjoy/n/k;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokjoy/n/k;

    .line 1
    invoke-direct {v0}, Lokjoy/n/k;-><init>()V

    .line 2
    sput-object v0, Lokjoy/n/k$b;->a:Lokjoy/n/k;

    return-void
.end method
