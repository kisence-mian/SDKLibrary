.class Lcom/tds/achievement/UserDataStore$6;
.super Lcom/tds/common/net/json/TypeRef;
.source "UserDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/UserDataStore;->uploadData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/net/json/TypeRef<",
        "Lcom/tds/common/net/ResponseBean<",
        "Lcom/tds/achievement/UploadResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/UserDataStore;


# direct methods
.method constructor <init>(Lcom/tds/achievement/UserDataStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/UserDataStore;

    .line 195
    iput-object p1, p0, Lcom/tds/achievement/UserDataStore$6;->this$0:Lcom/tds/achievement/UserDataStore;

    invoke-direct {p0}, Lcom/tds/common/net/json/TypeRef;-><init>()V

    return-void
.end method
