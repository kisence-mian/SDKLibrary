.class public Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$OkJoyHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkJoyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;-><init>(Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$1;)V

    sput-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$OkJoyHolder;->INSTANCE:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;
    .registers 1

    sget-object v0, Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager$OkJoyHolder;->INSTANCE:Lcom/okjoy/okjoysdk/rightAge/OkJoyAgeFloatManager;

    return-object v0
.end method
