.class public Lcom/bytedance/embedapplog/ar;
.super Lcom/bytedance/embedapplog/av;
.source "SourceFile"


# instance fields
.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method constructor <init>()V
    .registers 4

    .line 36
    const-string v0, "bav2b_click"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/embedapplog/av;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/bytedance/embedapplog/ar;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/embedapplog/ar;->h:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/bytedance/embedapplog/ar;->i:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/bytedance/embedapplog/ar;->j:Ljava/util/ArrayList;

    .line 55
    iput-object p8, p0, Lcom/bytedance/embedapplog/ar;->k:Ljava/util/ArrayList;

    .line 56
    iput p3, p0, Lcom/bytedance/embedapplog/ar;->l:I

    .line 57
    iput p4, p0, Lcom/bytedance/embedapplog/ar;->m:I

    .line 58
    iput p5, p0, Lcom/bytedance/embedapplog/ar;->n:I

    .line 59
    iput p6, p0, Lcom/bytedance/embedapplog/ar;->o:I

    .line 60
    return-void
.end method


# virtual methods
.method protected i()V
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/bytedance/embedapplog/ar;->p:Ljava/lang/String;

    if-nez v0, :cond_65

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/bytedance/embedapplog/ar;->i:Ljava/lang/String;

    const-string v2, "element_path"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v1, p0, Lcom/bytedance/embedapplog/ar;->h:Ljava/lang/String;

    const-string v2, "page_key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    iget-object v1, p0, Lcom/bytedance/embedapplog/ar;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    .line 84
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/bytedance/embedapplog/ar;->k:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "positions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_2d
    iget-object v1, p0, Lcom/bytedance/embedapplog/ar;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 87
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/bytedance/embedapplog/ar;->j:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "texts"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    :cond_43
    iget v1, p0, Lcom/bytedance/embedapplog/ar;->l:I

    const-string v2, "element_width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    iget v1, p0, Lcom/bytedance/embedapplog/ar;->m:I

    const-string v2, "element_height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    iget v1, p0, Lcom/bytedance/embedapplog/ar;->n:I

    const-string v2, "touch_x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    iget v1, p0, Lcom/bytedance/embedapplog/ar;->o:I

    const-string v2, "touch_y"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/ar;->p:Ljava/lang/String;

    .line 95
    :cond_65
    return-void
.end method
