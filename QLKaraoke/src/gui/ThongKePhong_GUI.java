package gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Locale;

import javax.swing.BorderFactory;
import javax.swing.Box;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.border.TitledBorder;
import javax.swing.plaf.DimensionUIResource;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;

import com.toedter.calendar.JDateChooser;

import connectDB.ConnectDB;
import dao.LapHoaDon_DAO;
import dao.Phong_DAO;
import entity.LapHoaDon;
import entity.Phong;

public class ThongKePhong_GUI extends JFrame implements ActionListener {
	private static final long serialVersionUID = 1L;
	private JPanel pnContent, pnNorth, pnWest, pnEast, pnThongKe, pnThongKeKhac, pnTable, pnTongTien;
	private JLabel lblTuNgay, lblDenNgay, lblTenPhong, lblTongSoTien;
	private JComboBox<String> cmbTenPhong;
	private DefaultTableModel model;
	private JTable table;
	private JButton btnThongKe, btnThoat, btnHoaDon, btnDichVu, btnKhachHang;
	private JDateChooser dateTuNgay, dateDenNgay;
	private Phong_DAO p;
	private LapHoaDon_DAO lhd;

	Color mauNen = new Color(205, 38, 38); // màu đỏ
	Color mauBang = new Color(99, 184, 255); // màu lam
	Locale localeVN = new Locale("vi", "VN");
	NumberFormat tienTeVN = NumberFormat.getCurrencyInstance(localeVN);
	DateTimeFormatter dft = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");

	public ThongKePhong_GUI() throws Exception {
		try {
			ConnectDB.getInstance().connect();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		lhd = new LapHoaDon_DAO();
		p = new Phong_DAO();
		createGui();
	}

	public void createGui() {
		setTitle("Thống kê phòng");
		setSize(1200, 500);
		setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		setResizable(true);
		setLocationRelativeTo(null);

		thongKePhong();
	}

	public void thongKePhong() {
		pnContent = new JPanel();
		pnContent.setLayout(new BorderLayout());

		pnNorth = new JPanel();
		pnContent.add(pnNorth, BorderLayout.NORTH);

		JLabel lblTitle = new JLabel("Thống kê phòng");
		lblTitle.setFont(new Font("Arial", Font.BOLD, 20));
		lblTitle.setForeground(Color.WHITE);
		pnNorth.add(lblTitle);
		pnNorth.setBackground(mauNen);

		pnWest = new JPanel(new GridLayout(2, 1));
		pnContent.add(pnWest, BorderLayout.WEST);

		pnThongKe = new JPanel();
		TitledBorder titledThongKe = BorderFactory.createTitledBorder(BorderFactory.createLineBorder(mauNen),
				"Danh mục thống kê");
		titledThongKe.setTitleJustification(TitledBorder.CENTER);
		pnThongKe.setBorder(titledThongKe);

		Box b = Box.createVerticalBox();
		Box b1 = Box.createHorizontalBox();
		Box b2 = Box.createHorizontalBox();
		Box b3 = Box.createHorizontalBox();
		Box b4 = Box.createHorizontalBox();

		lblTuNgay = new JLabel("Từ Ngày: ");
		dateTuNgay = new JDateChooser();
		dateTuNgay.setBounds(320, 90, 200, 30);
		dateTuNgay.setDateFormatString("dd/MM/yyy");
//		dateTuNgay.setDateFormatString("dd/MM/yyyy HH:mm"); 
		b1.add(lblTuNgay);
		b1.add(Box.createHorizontalStrut(20));
		b1.add(dateTuNgay);

		lblDenNgay = new JLabel("Đến Ngày: ");
		dateDenNgay = new JDateChooser();
		dateDenNgay.setBounds(320, 90, 200, 30);
		dateDenNgay.setDateFormatString("dd/MM/yyyy");
		b2.add(lblDenNgay);
		b2.add(Box.createHorizontalStrut(12));
		b2.add(dateDenNgay);

		lblTenPhong = new JLabel("Tên phòng: ");
		cmbTenPhong = new JComboBox<>();
		cmbTenPhong.addItem("Tất cả");

		for (Phong phong : p.getAllPhong()) {
			cmbTenPhong.addItem(phong.getTenPhong());
		}

		b3.add(lblTenPhong);
		b3.add(Box.createHorizontalStrut(10));
		b3.add(cmbTenPhong);

		btnThongKe = new JButton("Thống kê");
		btnThongKe.setBackground(mauNen);
		btnThongKe.setForeground(Color.white);
		btnThoat = new JButton("Thoát");
		btnThoat.setBackground(mauNen);
		btnThoat.setForeground(Color.white);
		b4.add(btnThongKe);
		b4.add(Box.createHorizontalStrut(10));
		b4.add(btnThoat);

		pnWest.add(pnThongKe);
		pnThongKe.add(b);
		b.add(b1);
		b.add(Box.createRigidArea(new DimensionUIResource(0, 20)));
		b.add(b2);
		b.add(Box.createRigidArea(new DimensionUIResource(0, 20)));
		b.add(b3);
		b.add(Box.createRigidArea(new DimensionUIResource(0, 20)));
		b.add(b4);

		pnThongKeKhac = new JPanel();
		btnHoaDon = new JButton("Thống kê hóa đơn");
		btnHoaDon.setBackground(mauNen);
		btnHoaDon.setForeground(Color.white);
		btnDichVu = new JButton("Thống kê dịch vụ");
		btnDichVu.setBackground(mauNen);
		btnDichVu.setForeground(Color.WHITE);
		btnKhachHang = new JButton("Thống kê khách hàng");
		btnKhachHang.setBackground(mauNen);
		btnKhachHang.setForeground(Color.WHITE);
		pnThongKeKhac.add(btnHoaDon);
		pnThongKeKhac.add(btnDichVu);
		pnThongKeKhac.add(btnKhachHang);
		pnWest.add(pnThongKeKhac);

		TitledBorder titledThongKeKhac = BorderFactory.createTitledBorder(BorderFactory.createLineBorder(mauNen),
				"Thống kê khác");
		titledThongKeKhac.setTitleJustification(TitledBorder.CENTER);
		pnThongKeKhac.setBorder(titledThongKeKhac);

		pnEast = new JPanel(new GridLayout(2, 1));
		pnContent.add(pnEast, BorderLayout.EAST);

		pnTable = new JPanel();
		pnEast.add(pnTable);

		TitledBorder titledTable = BorderFactory.createTitledBorder(BorderFactory.createLineBorder(mauNen),
				"Danh sách phòng");
		titledTable.setTitleJustification(TitledBorder.CENTER);
		pnTable.setBorder(titledTable);

		pnTongTien = new JPanel();
		JLabel lblTong = new JLabel("Tổng số tiền");
		lblTongSoTien = new JLabel("a");
		pnTongTien.add(lblTong);
		pnTongTien.add(lblTongSoTien);
		pnEast.add(pnTongTien);
		Font newFont = new Font("Arial", Font.BOLD, 25);
		lblTong.setFont(newFont);
		lblTongSoTien.setFont(newFont);
		TitledBorder titledTongTien = BorderFactory.createTitledBorder(BorderFactory.createLineBorder(mauNen));
		pnTongTien.setBorder(titledTongTien);

		createTable();
		this.add(pnContent);

		btnThongKe.addActionListener(this);
		btnThoat.addActionListener(this);
		btnDichVu.addActionListener(this);
		btnHoaDon.addActionListener(this);
		btnKhachHang.addActionListener(this);
	}

	public void createTable() {
		model = new DefaultTableModel();
		table = new JTable(model);
		model.addColumn("ID phòng");
		model.addColumn("Tên phòng");
		model.addColumn("Loại phòng");
		model.addColumn("Thời gian thuê");
		model.addColumn("Thời gian kết thúc");
		model.addColumn("Số tiền");

		double tongTien = 0.0;
		try {
			for (LapHoaDon lapHD : lhd.getAllLapHoaDon()) {
				for (Phong phong : p.getAllPhong()) {
					if (lapHD.getMaPhong().equals(phong.getMaPhong())) {
						double thanhTien = lhd.tinhThanhTienPhong(lapHD.getMaHoaDon());
						tongTien += thanhTien;
						Object[] row = { lapHD.getMaPhong(), phong.getTenPhong(), phong.getLoaiPhong(),
								dft.format(lapHD.getThoiGianThue()), dft.format(lapHD.getThoiGianKetThuc()),
								tienTeVN.format(thanhTien) };
						model.addRow(row);
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		pnTable.add(table);
		JScrollPane sp = new JScrollPane(table, JScrollPane.VERTICAL_SCROLLBAR_ALWAYS,
				JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		sp.setPreferredSize(new Dimension(700, 176));
		pnTable.add(sp);

		DefaultTableCellRenderer headerRenderer = new DefaultTableCellRenderer();
		headerRenderer.setBackground(mauBang);
		table.getTableHeader().setDefaultRenderer(headerRenderer);
		headerRenderer.setForeground(Color.WHITE);
		table.setGridColor(mauNen);

		lblTongSoTien.setText(tienTeVN.format(tongTien));
	}

	public static void main(String[] args) throws Exception {
		new ThongKePhong_GUI().setVisible(true);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		Object o = e.getSource();
		try {
			if (o.equals(btnThongKe)) {
				thongKe();
			} else if (o.equals(btnDichVu)) {
				new ThongKeDichVu_GUI().setVisible(true);
				this.dispose();
			} else if (o.equals(btnHoaDon)) {
				new ThongKeHoaDon_GUI().setVisible(true);
				this.dispose();
			} else if (o.equals(btnKhachHang)) {
				new ThongKeKhachHang_GUI().setVisible(true);
				this.dispose();
			} else if (o.equals(btnThoat)) {
				this.dispose();
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
	}

	public void thongKe() {
		model.setRowCount(0);
		double tongTien = 0.0;

		LocalDate tuNgay = dateTuNgay.getDate() != null
				? dateTuNgay.getDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDate()
				: null;
		LocalDate denNgay = dateDenNgay.getDate() != null
				? dateDenNgay.getDate().toInstant().atZone(ZoneId.systemDefault()).toLocalDate()
				: null;

		// Kiểm tra xem ngày đã được chọn hay chưa
		if (tuNgay == null || denNgay == null) {
			JOptionPane.showMessageDialog(this, "Vui lòng chọn cả ngày bắt đầu và ngày kết thúc để thống kê.",
					"Thông báo", JOptionPane.WARNING_MESSAGE);
			return; // Kết thúc phương thức nếu ngày chưa được chọn
		}

		try {
			String selectedPhong = (String) cmbTenPhong.getSelectedItem(); // Lấy phòng được chọn trong cmbPhong

			for (LapHoaDon lapHD : lhd.getAllLapHoaDon()) {
				for (Phong phong : p.getAllPhong()) {
					LocalDateTime thoiGianThue = lapHD.getThoiGianThue();
					LocalDateTime thoiGianKThuc = lapHD.getThoiGianKetThuc();
					if (lapHD.getMaPhong().equals(phong.getMaPhong())
							&& (thoiGianThue.toLocalDate().isAfter(tuNgay)
									|| thoiGianThue.toLocalDate().isEqual(tuNgay))
							&& (thoiGianKThuc.toLocalDate().isBefore(denNgay)
									|| thoiGianKThuc.toLocalDate().isEqual(denNgay))
							&& (selectedPhong.equals("Tất cả") || selectedPhong.equals(phong.getTenPhong()))) {
						double thanhTien = lhd.tinhThanhTienPhong(lapHD.getMaHoaDon());
						tongTien += thanhTien;
						Object[] row = { lapHD.getMaPhong(), phong.getTenPhong(), phong.getLoaiPhong(),
								dft.format(thoiGianThue), dft.format(lapHD.getThoiGianKetThuc()),
								thanhTien };
						model.addRow(row);
					}
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		lblTongSoTien.setText(tienTeVN.format(tongTien));
	}
}
