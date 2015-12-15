.class public Lcom/sonymobile/settings/nfc/HceColorBar;
.super Landroid/widget/LinearLayout;
.source "HceColorBar.java"


# instance fields
.field private mLeftColor:I

.field private mLeftRatio:F

.field private mMiddleColor:I

.field private mMiddleRatio:F

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRightColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xdabf9f

    iput v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftColor:I

    const v0, -0x714b1d

    iput v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleColor:I

    const v0, -0x262627

    iput v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRightColor:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceColorBar;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private updateIndicator()V
    .locals 3

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->getWidth()I

    move-result v3

    const/4 v0, 0x0

    int-to-float v4, v3

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v1, v0, v4

    int-to-float v4, v3

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v1, v4

    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    move v0, v1

    :cond_0
    move v1, v2

    if-ge v0, v1, :cond_1

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sub-int v4, v1, v0

    sub-int/2addr v3, v4

    move v0, v1

    :cond_1
    add-int v1, v0, v3

    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iput v1, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRightColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->updateIndicator()V

    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iput p1, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftColor:I

    iput p2, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleColor:I

    iput p3, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mRightColor:I

    invoke-direct {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->updateIndicator()V

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->invalidate()V

    return-void
.end method

.method public setRatios(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mLeftRatio:F

    iput p2, p0, Lcom/sonymobile/settings/nfc/HceColorBar;->mMiddleRatio:F

    invoke-virtual {p0}, Lcom/sonymobile/settings/nfc/HceColorBar;->invalidate()V

    return-void
.end method
