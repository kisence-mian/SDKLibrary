.class public Lokjoy/m/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Landroid/app/Activity;

.field public static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/okjoy/okjoysdk/entity/response/OkJoyTipsInfoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lokjoy/m/b;->b:Ljava/util/ArrayList;

    return-void
.end method
